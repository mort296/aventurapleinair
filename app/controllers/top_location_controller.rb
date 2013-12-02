class TopLocationController < ApplicationController
	def index
		@text = TopLocation.first()
		@topLocations = LocationRating.all.order('rate').limit(10)
	end
end
