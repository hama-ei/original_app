class ApplicationController < ActionController::Base
  before_action :basic
  protect_from_forgery with: :exception

  private
  
  def basic
    authenticate_or_request_with_http_basic do |username, password|
      username == "kyousitu" && password == "2019"
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :password, :email, :created_at, :updated_at])
  end

end