class PortfoliosController < ApplicationController
    
    def index
        @images = Image.all
    end
    
    def show
        @portfolio = Portfolio.find(params[:id])
        @images = Image.includes(:portfolio).where(portfolio_id: params[:id])
        @image = Image.find(params[:id])
    end

end
