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
      flash[:notice] = 'Canny submit empty post ya numpty'
    else
      @new_post = Post.create(post_params)
    end 
    redirect_to posts_path
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
  
  def destroy
    @post = Post.find(params[:id])
    @comment = @post.comments
    @comment.each do |comment|
      comment.destroy
    end
    @post.destroy
    redirect_to posts_path
  end
  

  private

  def post_params
    params.require(:post).permit(:message, :user_id)
  end
end 

