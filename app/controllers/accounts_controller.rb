class AccountsController < ApplicationController
    def index
        
    end
    
    def show
        @user = User.find(params[:id])
        @account = Account.find(params[:id])
    end
        
    def settings
        @user = User.find(params[:id])
        @account = Account.find(params[:id])
    end
end
