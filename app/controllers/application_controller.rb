class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check_access if Rails.env == "production"
  
  private
  def check_access
    authenticate_or_request_with_http_basic do |user_name, password|
	    # Change these to username and password required
	    user_name == "aventura" && password == "pleinair"
  	end
  end
end
