class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_slider_images, :set_locale

  def get_slider_images
    slider = Home.first()
    (@slider ||= []).push({:image => slider.slider1.url, :alt => slider.slider1_file_name}) if slider.slider1?
    (@slider ||= []).push({:image => slider.slider2.url, :alt => slider.slider2_file_name}) if slider.slider2?
    (@slider ||= []).push({:image => slider.slider3.url, :alt => slider.slider3_file_name}) if slider.slider3?
    (@slider ||= []).push({:image => slider.slider4.url, :alt => slider.slider4_file_name}) if slider.slider4?
    (@slider ||= []).push({:image => slider.slider5.url, :alt => slider.slider5_file_name}) if slider.slider5?
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
end
