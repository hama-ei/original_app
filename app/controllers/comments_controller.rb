class CommentsController < ApplicationController

  def index
    @comments = Comment.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @comment = current_user.comments.new
  end

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.save
    redirect_to root_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    .destroy
  end

  def edit
    @comment =Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment: comment_params[:comment])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :user_id)
  end

end
