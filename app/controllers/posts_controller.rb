class PostsController < ApplicationController

  def index
    # this method is going to need parameters passed to it
    @new_post = Post.new
    @list_posts = Post.all
  end

  def create
    @new_post = Post.create(post_params)
    redirect_to index
  end

  private

  def post_params
    params.require(:post).permit(:message, :user_id)
  end


end

# First commit


  # def new
  #   @new_post = Post.new
  # end
#



