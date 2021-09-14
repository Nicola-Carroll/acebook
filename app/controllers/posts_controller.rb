class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @user = User.find(1) # needs to be params[user_id]
    @post = @user.posts.create(post_params)
    @post.save
    redirect_to posts_url
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
