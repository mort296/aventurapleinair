class TopFiveController < ApplicationController
	def index
		@topActivities = TopActivity.first().activities.limit(5)
		@topLocations = TopActivity.first().locations.limit(5)
	end
end
