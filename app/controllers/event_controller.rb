class EventController < ApplicationController
  def index
  	@eventText = EventIndex.first()
  	@events = Event.all().where("online = true")
  end

  def show
  	@event = Event.find(params[:id])
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
