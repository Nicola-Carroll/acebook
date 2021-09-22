class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    if (params[:comment][:message].strip == "")
      flash[:emptycomment] = 'Cannae submit empty comment ya numpty'
    else
      @comment = @post.comments.create(params[:comment].permit(:message, :user_id))
    end
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.likes += 1
    @comment.save
    redirect_to post_path(@post)
  end
  def destroy 
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
