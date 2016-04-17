class PortfoliosController < ApplicationController
    
    def index
        @portfolios = Portfolio.all
        @accounts = Account.all
        @images = Image.all
    end
    
    def new
       @portfolio = Portfolio.new
       @user = current_user
       @account = current_user.account
    end
    
    def create
        @portfolio = Portfolio.new(portfolio_params)
        @portfolio.user = current_user
        @account = current_user.account
        if @portfolio.save
            redirect_to portfolios_path 
        else
         render 'new'
        end
    end
    
    def show
        @portfolio = Portfolio.find(params[:id])
        @images = Image.includes(:portfolio).where(portfolio_id: params[:id])
        @image = Image.find(params[:id])
    end
    
    private
    
        def portfolio_params
            params.require(:portfolio).permit(:name, :description)
        end
        
        def find_portfolio
            @portfolio = Portfolio.find(params[:id]) 
        end

end
