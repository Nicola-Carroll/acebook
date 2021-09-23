class PostsController < ApplicationController
  def index
    # this method is going to need parameters passed to it
    # @new_post = Post.new
    # This is to stop something called an rails - "n+1 query issue" - this is 'eager loading'
    @list_posts = Post.all.order(created_at: :desc).includes(:comments)
  end

  def new
    @new_post = Post.new
  end 

  def create
    if (params[:post][:message].strip == "")
      flash[:emptymessage] = 'Cannae submit empty post ya numpty'
      redirect_to new_post_path
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
    dislike = params['change']['dislike']
    like = params['change']['like']
    @post = Post.find(params[:id])
    if dislike
      @post.likes -= 1
    elsif like
      @post.likes += 1
    end
    @post.save
    redirect_to posts_path
  end

  def show
    @posts = Post.find(params[:id])
  end
  
  def search 
    @list_posts = Post.where("message LIKE?", "%" + params[:q] + "%")
    p "HERE"
    p @list_posts
  end 

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:message, :user_id, :post_image)
  end
end 

