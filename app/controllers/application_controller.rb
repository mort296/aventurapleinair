class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_footer_header

  before_filter :set_locale

  def get_footer_header
    @menu_activity_category = ActivityCategory.all()
    @menu_administrative_region = AdministrativeRegion.all()
    @menu_event = Event.all.where('online = true')
    @footer_content = FooterText.first()
  end

  private
  def set_locale
    I18n.locale = session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end
end
