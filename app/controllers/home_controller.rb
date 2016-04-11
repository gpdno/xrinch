class HomeController < ApplicationController
    
    def index
        if current_user
            @account = Account.find(current_user)
        end
    end
    
    def about
        if current_user
            @account = Account.find(current_user)
        end
    end
    
end
