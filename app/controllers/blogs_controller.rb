class BlogsController < ApplicationController
    before_action :find_blog, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        @blogs = Blog.all
        @accounts = Account.all
    end
    
    def new
       @blog = Blog.new
       @user = current_user
       @account = current_user.account
    end
    
    def create
        @blog = Blog.new(blog_params)
        @blog.user = current_user
        @account = current_user.account
        if @blog.save
            redirect_to blogs_path 
        else
         render 'new'
        end
    end
    
    def show

    end
    
    def edit
        
    end
    
    def update
       if @blog.update(blog_params)
          redirect_to blogs_path 
       else
           render 'edit'
           
       end
    end
    
    def destroy
        @blog.destroy
        redirect_to root_path
    end
    
    private
    
        def blog_params
            params.require(:blog).permit(:title, :description)
        end
        
        def find_blog
            @blog = Blog.find(params[:id]) 
        end
    
end
