class SearchController < ApplicationController
	def index
		redirect_to root_url
	end

  def create
		@activity = Activity.find(:all, :conditions => ['(name LIKE ? OR description LIKE ? OR federation LIKE ? OR particularity LIKE ? OR other_infos LIKE ? OR learn LIKE ? OR equipment LIKE ?) AND online = true', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%"])
		@location = Location.find(:all, :conditions => ['name LIKE ? AND online = true', "%#{params[:search]}%"])
		@event = Event.find(:all, :conditions => ['(name LIKE ? OR description LIKE ? OR interesting_stats LIKE ? OR federation LIKE ? OR other_infos LIKE ?) AND online = true', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%"])
  end
end