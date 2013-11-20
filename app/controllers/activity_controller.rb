class ActivityController < ApplicationController
  def index
  	@categories = ActivityCategory.all()
  end

  def show
  	@activity = Activity.find(params[:id])
  end

  def new_comment
  	activity = Activity.find(params[:id])
  	activity.comments.create(:comment => params[:comment], :user_name => params[:user_name], :user_email => params[:user_email])
  	redirect_to(:back)
  end
end
