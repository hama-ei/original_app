class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  def destroy
    @user =User.includes(:images).find(params[:id])
    @user.destroy
    redirect_to root_path
  end
  
  def album_index
    @users = User.all
  end

  def album_show
    @user = User.find(params[:id])
    @images = Image.where(user_id: params[:id]).order("created_at DESC")
  end

  private
  def user_params
    params.require(:user).permit(
      :name, :name_kana, :created_at, :updated_at)
  end
end
