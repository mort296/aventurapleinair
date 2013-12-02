class TopActivityController < ApplicationController
	def index
		@text = TopActivity.first()
		@topActivities = ActivityRating.all.order('rate').limit(10)
	end
end
