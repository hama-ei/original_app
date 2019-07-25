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

  
  def album_index
    @users = User.all
  end

  def album_show
    @user = User.find(params[:id])
    @images = Image.where(user_id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :name_kana, :password, :grade_year, :class_day_id, :class_time_id, :email, :telephone, :zip_code, :adress, :introduction, :birth_month, :birth_day, :created_at, :updated_at)
  end

  def image_params
    params.require(:image).permit(:image,:user_id,:date_year,:date_month,:date_day)
  end

end