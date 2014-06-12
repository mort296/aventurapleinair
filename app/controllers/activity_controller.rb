class ActivityController < ApplicationController
  before_filter :get_slider_images

  def get_slider_images
    if (action_name == 'index')
      sliderActivityImages = Activity.all.where('online = true').shuffle[0..4]

      sliderActivityImages.each do |activity|
        (@slider ||= []).push({:image => activity.image.url, :alt => activity.image_file_name})
      end

    else
      activity = Activity.friendly.find(params[:id])
      (@slider ||= []).push({:image => activity.image.url, :alt => activity.image_file_name})
      @slider.push({:image => activity.second_image.url, :alt => activity.second_image_file_name}) if activity.second_image?
      @slider.push({:image => activity.third_image.url, :alt => activity.third_image_file_name}) if activity.third_image?
      @slider.push({:image => activity.fourth_image.url, :alt => activity.fourth_image_file_name}) if activity.fourth_image?
      @slider.push({:image => activity.fifth_image.url, :alt => activity.fifth_image_file_name}) if activity.fifth_image?
    end
    
  end

  def index
    @menu_activity_category = ActivityCategory.all()
    @text_top = TopActivity.first()
  end
  
  def show
  	@activity = Activity.friendly.find(params[:id])
    if request.path != activity_path(@activity)
      redirect_to @activity, status: :moved_permanently
    end
    
    if @activity.video_link?
      @activity.video_link = @activity.video_link.gsub('https://', '')
      @activity.video_link = @activity.video_link.gsub('http://', '')
    end
    
    @video = Conred::Video.new(
      video_url: @activity.video_link, 
      width: 950, 
      height: 534,
      error_message: 'false'
    )

  end

  def locations
    @activity = Activity.friendly.find(params[:id])
    @useful_infos = UsefulInfo.all()
  end

  def events
    @activity = Activity.friendly.find(params[:id])
  end
end
