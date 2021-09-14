class CommentsController < ApplicationController
  def new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def create
    @post = Post.find(params[:id])
    @comment = @post.comments.create(params[:message])
    redirect_to post_path(@post)
  end
end
