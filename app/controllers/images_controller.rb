class ImagesController < ApplicationController

  def index
    @users = User.includes(:images)
  end

  def show
    @user =User.includes(:images).find(params[:id])
    @like = Like.new
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.save
    redirect_to root_path
  end

  def destroy
    @user =User.includes(:images).find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :name_kana, :password, :email, :telephone, :zip_code, :adress, :introduction, :birth_month, :birth_day, :created_at, :updated_at)
  end

  def image_params
    params.require(:image).permit(:image,:user_id,:date_year,:date_month,:date_day)
  end

end