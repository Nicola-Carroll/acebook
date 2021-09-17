class PostsController < ApplicationController

  def index
    # this method is going to need parameters passed to it
    @new_post = Post.new
    @list_posts = Post.all.order(created_at: :desc)
  end

  def create
    if (params[:post][:message].strip == "")
      flash[:notice] = 'Canny submit empty post ya numpty'
    else
      @new_post = Post.create(post_params)
    end 
    redirect_to '/posts'
  end
  
  private

  def post_params
    params.require(:post).permit(:message, :user_id)
  end

end 

