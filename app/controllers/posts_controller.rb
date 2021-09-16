class PostsController < ApplicationController

  def index
    # this method is going to need parameters passed to it
    @new_post = Post.new
    @list_posts = Post.all
  end

  def create
    @new_post = Post.create(post_params)
    # user id session[:user_id]
    # if post_params[:message] == ""
    redirect_to '/posts'
  end

  
  private

  def post_params
    params.require(:post).permit(:message)
  end


end

# First commit


  # def new
  #   @new_post = Post.new
  # end
#



