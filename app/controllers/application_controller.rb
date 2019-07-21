class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :basic
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:index]

  private
  def basic
    authenticate_or_request_with_http_basic do |username, password|
      username == "kyousitu" && password == "2019"
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:name_kana,:grade_id,:class_day_id,:class_time_id,:email,:telephone,:zip_code,:address,:birth_month,:birth_day])
  end

end