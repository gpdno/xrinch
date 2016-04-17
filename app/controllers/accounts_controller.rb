class AccountsController < ApplicationController

    def index
        @accounts = Account.all
        @users = User.all
    end
    
    def show
        @account = Account.find(params[:id])
        @user = User.find(params[:id])
    end
    
    def edit
        @account = Account.find(params[:id])
        @user = User.find(params[:id])
    end

    def update
        @account = Account.find(params[:id])
        if @account.update_attributes(account_params)
            flash[:success] = "Successfully updated"    # Optional
            redirect_to account_path
        else
            flash[:error] = "Error"       # Optional
            render :edit
        end
    end

private
  
    def account_params
        params.require(:account).permit(:first_name, :last_name, :description, :location, :website)
    end
  
    
end