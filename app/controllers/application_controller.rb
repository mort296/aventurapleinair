class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check_access if Rails.env == "production"

  before_filter :get_footer_header

  before_filter :set_locale
  
  def get_footer_header
    @menu_activity_category = ActivityCategory.all()
    @menu_location = Location.all().where("name IS NOT NULL")
    @menu_event = Event.all
    @footer_content = FooterText.first()
  end

  private
  def set_locale
    I18n.locale = session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end

  def check_access
    authenticate_or_request_with_http_basic do |user_name, password|
	    # Change these to username and password required
	    user_name == "aventura" && password == "pleinair"
  	end
  end
end
