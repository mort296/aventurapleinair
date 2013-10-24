class ActivityCategoryController < ApplicationController
  def index
  	redirect_to activity_index_url
  end

  def show
  	@category = ActivityCategory.find(params[:id])
  end
end
