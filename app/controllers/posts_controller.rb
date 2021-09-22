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
    if (params[:post][:message].strip == "") || (params[:post][:message] == "")
      flash[:emptymessage] = 'Cannae submit empty post ya numpty'
      redirect_to '/posts/new'
    else
      @new_post = Post.create(post_params)
      redirect_to posts_path
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
    params.require(:post).permit(:message, :user_id)
  end
end 

