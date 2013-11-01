class LocationController < ApplicationController
	def index
		@locations = Location.all().where("name IS NOT NULL")
	end	
	
	def show
		require 'json'

		@location = Location.find(params[:id])
		@weather = JSON.parse Net::HTTP.get(URI.parse("http://api.openweathermap.org/data/2.5/weather?lat=#{@location.gps_latitude}&lon=#{@location.gps_longitude}&units=metric&cnt=1"))

	end
end
