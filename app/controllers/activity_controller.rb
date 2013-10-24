class ActivityController < ApplicationController
  def index
  	@categories = ActivityCategory.all()
  end

  def show
  	@activity = Activity.find(params[:id])
  end
end
