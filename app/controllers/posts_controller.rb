class PostsController < ApplicationController
  def index
    # this method is going to need parameters passed to it
    # @new_post = Post.new
    @list_posts = Post.all.order(created_at: :desc)
  end

  def new
    @new_post = Post.new
  end 

  def create
    if (params[:post][:message].strip == "")
      redirect_to new_post_path, notice: 'Canny submit empty post ya numpty'
    else
      @new_post = Post.create(post_params)
      if @new_post.save
        redirect_to posts_path
      else
        redirect_to new_post_path, notice: 'Post was not successful'
      end
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.likes += 1
    @post.save
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end


  private

  def post_params
    params.require(:post).permit(:message, :user_id, :post_image)
  end
end 

