class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_slider_images, :set_locale

  def get_slider_images
    sliderGlobalImages = Slider.all()
    sliderGlobalImages.each do |slider|
      (@slider ||= []).push({:image => slider.slider1.url, :alt => slider.slider1_file_name})
    end
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
