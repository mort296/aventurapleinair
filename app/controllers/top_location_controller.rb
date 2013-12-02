class TopLocationController < ApplicationController
	def index
		@text = TopLocation.first()
		@topLocations = Location.all.joins(:location_rating).order('location_ratings.rate DESC').limit(10)
	end
end
