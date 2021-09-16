class PostsController < ApplicationController

  def index
    # this method is going to need parameters passed to it
    @new_post = Post.new
    @user_id = session[:user_id]
    @list_posts = Post.all.order(created_at: :desc)
  end

  def create
    @new_post = Post.create(post_params)
    redirect_to '/posts'
  eçnd
  
  private

  def post_params
    params.require(:post).permit(:message, :user_id)
  end


end