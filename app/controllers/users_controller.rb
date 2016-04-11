class UsersController < ApplicationController
   
    def show
        @user = User.find(params[:id])
        @account = Account.find(params[:id])
    end
    
end