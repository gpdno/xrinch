class PortfoliosController < ApplicationController
    before_action :find_portfolio, only: [:edit, :update, :show, :destroy]
    
    def index
        @users = User.all
        @portfolios = Portfolio.all
        @accounts = Account.all
        @images = Image.all
    end
    
    def list
        @portfolios = Portfolio.includes(:user).where(user: params[:id])
        if @portfolio = Portfolio.where(:user_id => current_user.id).any?
         @portfolio = Portfolio.includes(:user).where(user: params[:id])
        end
        @account = Account.find(params[:id])
        @user = User.find(params[:id])
    end
    
    def user_index
        @portfolios = Portfolio.includes(:user).where(user: params[:id])
#        if @portfolio = Portfolio.where(:user_id => current_user.id).any?
#            @portfolio = Portfolio.find(params[:id])
#        end
        @account = Account.find(params[:id])
        @user = User.find(params[:id])
    end
    
    def show
        @images = Image.includes(:portfolio).where(portfolio_id: params[:id])
        if @image = Image.where(:user_id => current_user.id).any?
            @image = Image.find(params[:id])
        end
        @user = User.includes(:portfolio).where(portfolio_id: params[:id])
        @account = Account.includes(:user).where(user: params[:id])
    end
    
    def new
       @portfolio = Portfolio.new
       @user = current_user
    end
    
    def create
        @portfolio = Portfolio.new(portfolio_params)
        @portfolio.user = current_user
        if @portfolio.save
            redirect_to portfoliolist_path(current_user)
        else
         render 'new'
        end
    end
    
    def edit
        
    end
    
    def update
        if @portfolio.update(portfolio_params)
          flash[:success] = "Your portfolio was successfully updated"
          redirect_to portfolio_path(@portfolio)
        else
          render 'edit'
        end
    end
    
    def destroy
        @portfolio.destroy
        flash[:danger] = "Your portfolio item was deleted"
        redirect_to portfolios_path
    end

    
    private
    
        def portfolio_params
            params.require(:portfolio).permit(:name, :description, :category, :keyword)
        end
        
        def find_portfolio
                @portfolio = Portfolio.find(params[:id])
        end
        
end
