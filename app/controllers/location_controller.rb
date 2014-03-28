class LocationController < ApplicationController
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
