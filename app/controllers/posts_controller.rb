class PostsController < ApplicationController
  def index
    # this method is going to need parameters passed to it
    @new_post = Post.new
    @list_posts = Post.all.order(created_at: :desc)
  end

  def create
    @new_post = Post.create(post_params)
    if @new_post.save
      redirect_to '\posts', notice: 'Post successful'
    else
      flash[:alert] = 'Post was not successful'
      render 'index'
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.likes += 1
    @post.save
    redirect_to '/posts'
  end

  def show
    @post = Post.find(params[:id])
  end


  private

  def post_params
    params.require(:post).permit(:message, :user_id, :post_image)
  end
end 