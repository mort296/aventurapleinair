class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_footer_header, :set_locale, :set_season

  def get_footer_header
    @footer_content = FooterText.first()
  end

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def record_not_found
    render :template => 'error_pages/404', :layout => false, :status => :not_found
  end
  
  def set_locale
    I18n.locale = session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end

  def set_season
    session[:season] = :winter if not session[:season]
  end
end
