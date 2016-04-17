class HomeController < ApplicationController
    
    def index
        @portfolios = Portfolio.all
        @accounts = Account.all
        @images = Image.all
    end
    
    def about

    end
    
    def profile

    end
    
end
