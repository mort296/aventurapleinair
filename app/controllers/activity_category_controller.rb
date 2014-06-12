class ActivityCategoryController < ApplicationController
	before_filter :get_slider_images

  def get_slider_images
  	category = ActivityCategory.friendly.find(params[:id])
  	category.activity.where('online = true').limit(5).each do |activity|
      (@slider ||= []).push({:image => activity.image.url, :alt => activity.image_file_name})
    end
  end

  def index
  	redirect_to activity_index_url
  end

  def show
  	@category = ActivityCategory.friendly.find(params[:id])
  end
end
