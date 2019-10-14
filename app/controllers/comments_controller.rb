class CommentsController < ApplicationController

  def index
    @comments = Comment.page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to root_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
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
    params.require(:comment).permit(:comment)
  end

end
