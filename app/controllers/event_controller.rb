class EventController < ApplicationController
  before_filter :get_slider_images

  def get_slider_images
    if (action_name == 'index')
      sliderEventImages = Event.all.where('online = true').shuffle[0..4]

      sliderEventImages.each do |event|
        (@slider ||= []).push({:image => event.image.url, :alt => event.image_file_name})
      end

    else
      event = Event.friendly.find(params[:id])
      (@slider ||= []).push({:image => event.image.url, :alt => event.image_file_name})
      @slider.push({:image => event.second_image.url, :alt => event.second_image_file_name}) if event.second_image?
      @slider.push({:image => event.third_image.url, :alt => event.third_image_file_name}) if event.third_image?
      @slider.push({:image => event.fourth_image.url, :alt => event.fourth_image_file_name}) if event.fourth_image?
      @slider.push({:image => event.fifth_image.url, :alt => event.fifth_image_file_name}) if event.fifth_image?
    end
    
  end

  def index
  	@eventText = EventIndex.first()
  	@events = Event.all().where("online = true")
  end

  def show
  	@event = Event.friendly.find(params[:id])
    if request.path != event_path(@event)
      redirect_to @event, status: :moved_permanently
    end
  end

  def new_comment
  	event = Event.find(params[:id])
  	@comment = event.comments.create(:comment => params[:comment], :user_name => params[:user_name], :user_email => params[:user_email], :activity_title => event.name)
  	url = edit_admin_comment_url(@comment.id)
    CommentMailer.new_comment_notification(url).deliver
    respond_to do |format|
      format.js
    end
  end
end
