class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:message, :user_id))
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.likes += 1
    @comment.save
    redirect_to post_path(@post)
  end
end
