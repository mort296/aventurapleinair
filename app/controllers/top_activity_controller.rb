class TopActivityController < ApplicationController
	def index
		@text = TopActivity.first()
		@topActivities = Activity.all.includes(:activity_rating).order('activity_ratings.rate DESC').limit(10)
	end
end
