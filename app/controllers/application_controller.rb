class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  before_action :basic

  private
  def basic
    authenticate_or_request_with_http_basic do |username, password|
      username == "kyousitu" && password == "2019"
    end
  end
end