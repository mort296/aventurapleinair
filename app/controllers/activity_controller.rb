class ActivityController < ApplicationController
  def index
  	@categories = ActivityCategory.all()
  end

  def show
  	@activity = Activity.find(params[:id])
  end

  def new_comment
  	activity = Activity.find(params[:id])
  	@comment = activity.comments.create(:comment => params[:comment], :user_name => params[:user_name], :user_email => params[:user_email], :activity_title => activity.name)
  	url = edit_admin_comment_url(@comment.id)
    CommentMailer.new_comment_notification(activity, url).deliver
    respond_to do |format|
      format.js
    end
  end
end
