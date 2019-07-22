class UsersController < ApplicationController

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
end
