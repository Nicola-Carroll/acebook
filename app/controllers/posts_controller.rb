class PostsController < ApplicationController
  def new
    @new_post = Post.new
  end

  def create
    @new_post = Post.create(post_params)
    redirect_to index
  end

  def index
    @new_post = Post.new
    @list_posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end

# First commit
