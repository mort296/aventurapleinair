class TopFiveController < ApplicationController
	def index
		@topActivities = ActivityRating.all.order('rate').limit(5)
		@topLocations = LocationRating.all.order('rate').limit(5)
	end
end
