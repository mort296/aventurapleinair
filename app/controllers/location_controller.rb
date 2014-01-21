class LocationController < ApplicationController
	def show
		require 'json'

		@location = Location.find(params[:id])
		@newWeather = 0

		#File.open('tmp/json/weathercast.json', 'r') do |file|
		#	file.each do |line|				
		#		line = JSON.load(line)
		#		@oldDay = line['location']['day'] if line['location']['day'] != Date.today.to_s
		#		if line['location']['id'] == @location.id.to_s and line['location']['day'] == Date.today.to_s
		#			@weather = line['location']['data']
		#			@newWeather += 1
		#		end
		#	end
	  #end
#
	  #if @newWeather == 0
	  #	weathercast = Net::HTTP.get(URI.parse("http://api.openweathermap.org/data/2.5/weather?lat=#{@location.gps_latitude}&lon=#{@location.gps_longitude}&units=metric&cnt=1"))
	  #	@weather = JSON.parse weathercast if weathercast && weathercast.length >= 2
	  #	if not @oldDay or @oldDay == Date.today.to_s
	  #		File.open('tmp/json/weathercast.json', 'a') { |file| file.puts "{\"location\":{\"id\":\"#{@location.id}\",\"day\":\"#{Date.today.to_s}\",\"data\":#{weathercast.squish}}}" }
	  #	else
	  #		File.open('tmp/json/weathercast.json', 'w') { |file| file.puts "{\"location\":{\"id\":\"#{@location.id}\",\"day\":\"#{Date.today.to_s}\",\"data\":#{weathercast.squish}}}" }
	  #	end
	  #end

	end
end
