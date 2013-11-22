class SearchController < ApplicationController
  def create
		@activity = Activity.find(:all, :conditions => ['name LIKE ? OR description LIKE ? OR federation LIKE ? OR particularity LIKE ? OR other_infos LIKE ? OR learn LIKE ? OR equipment LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%"])
		@location = Location.find(:all, :conditions => ['name LIKE ? OR services LIKE ? OR interesting_stats LIKE ? OR introduction LIKE ? OR other_infos LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%"])
		@event = Event.find(:all, :conditions => ['name LIKE ? OR description LIKE ? OR interesting_stats LIKE ? OR federation LIKE ? OR other_infos LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%"])
  end
end