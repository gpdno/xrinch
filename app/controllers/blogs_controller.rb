class BlogsController < ApplicationController
    before_action :find_blog, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        @blogs = Blog.all
        @users = User.all
    end
    
    def user_index
        @blog = Blog.find(params[:id])
        @blogs = Blog.includes(:user).where(id: params[:id])
        @user = current_user
    end
    
    def new
        @blog = Blog.new
    end
    
    def create
        @blog = current_user.blogs.build(blog_params)
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
        redirect_to blogs_path
    end
    
    private
    
        def blog_params
            params.require(:blog).permit(:title, :description)
            #params.require(:blog).permit(:title, :description)
        end
        
        def find_blog
            @blog = Blog.find(params[:id]) 
        end
    
end
