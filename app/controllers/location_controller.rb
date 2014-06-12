class LocationController < ApplicationController
	before_filter :get_slider_images

  def get_slider_images
    if (action_name == 'index')
      sliderLocationImages = Location.all.where('online = true').shuffle[0..4]

      sliderLocationImages.each do |location|
        (@slider ||= []).push({:image => location.image.url, :alt => location.image_file_name})
      end

    else
      location = Location.friendly.find(params[:id])
      (@slider ||= []).push({:image => location.image.url, :alt => location.image_file_name})
      @slider.push({:image => location.second_image.url, :alt => location.second_image_file_name}) if location.second_image?
      @slider.push({:image => location.third_image.url, :alt => location.third_image_file_name}) if location.third_image?
      @slider.push({:image => location.fourth_image.url, :alt => location.fourth_image_file_name}) if location.fourth_image?
      @slider.push({:image => location.fifth_image.url, :alt => location.fifth_image_file_name}) if location.fifth_image?
    end
    
  end

	def index
		@locations = Location.all.where('online = true').order(:name)
		@menu_administrative_region = AdministrativeRegion.all()
	end
	
	def show
		require 'json'

		@location = Location.friendly.find(params[:id])
		if request.path != location_path(@location)
	    redirect_to @location, status: :moved_permanently
	  end
		
	end

	def new_comment
  	location = Location.find(params[:id])
  	@comment = location.comments.create(:comment => params[:comment], :user_name => params[:user_name], :user_email => params[:user_email], :activity_title => location.name)
  	url = edit_admin_comment_url(@comment.id)
    CommentMailer.new_comment_notification(url).deliver
    respond_to do |format|
      format.js
    end
  end
end
