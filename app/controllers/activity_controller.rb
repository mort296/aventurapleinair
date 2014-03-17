class ActivityController < ApplicationController
  def index
    @menu_activity_category = ActivityCategory.all()
  end
  
  def show
  	@activity = Activity.find(params[:id])
    
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

  def new_comment
  	activity = Activity.find(params[:id])
  	@comment = activity.comments.create(:comment => params[:comment], :user_name => params[:user_name], :user_email => params[:user_email], :activity_title => activity.name)
  	url = edit_admin_comment_url(@comment.id)
    CommentMailer.new_comment_notification(url).deliver
    respond_to do |format|
      format.js
    end
  end
end
