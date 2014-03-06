class LocationController < ApplicationController
	def index
		@locations = Location.all.where('online = true').order(:name)
	end
	
	def show
		require 'json'

		@location = Location.find(params[:id])
		@newWeather = 0
		begin
			File.open('tmp/json/weathercast.json', 'r') do |file|
				file.each do |line|				
					line = JSON.load(line)
					@oldDay = line['location']['day'] if line['location']['day'] != Date.today.to_s
					if line['location']['id'] == @location.id.to_s and line['location']['day'] == Date.today.to_s
						@weather = line['location']['data']
						@newWeather += 1
					end
				end
		  end

		  if @newWeather == 0
		  	weathercast = Net::HTTP.get(URI.parse("http://api.openweathermap.org/data/2.5/weather?lat=#{@location.gps_latitude}&lon=#{@location.gps_longitude}&units=metric&cnt=1"))
		  	@weather = JSON.parse weathercast if weathercast && weathercast.length >= 2
		  	if not @oldDay or @oldDay == Date.today.to_s
		  		File.open('tmp/json/weathercast.json', 'a') { |file| file.puts "{\"location\":{\"id\":\"#{@location.id}\",\"day\":\"#{Date.today.to_s}\",\"data\":#{weathercast.squish}}}" }
		  	else
		  		File.open('tmp/json/weathercast.json', 'w') { |file| file.puts "{\"location\":{\"id\":\"#{@location.id}\",\"day\":\"#{Date.today.to_s}\",\"data\":#{weathercast.squish}}}" }
		  	end
		  end
	  rescue => ex
  		@weather = nil
  	end
	end

	def new_comment
  	location = Location.find(params[:id])
  	@comment = location.comments.create(:comment => params[:comment], :user_name => params[:user_name], :user_email => params[:user_email], :activity_title => location.name)
  	url = edit_admin_comment_url(@comment.id)
    CommentMailer.new_comment_notification(url).deliver
    respond_to do |format|
      format.js
    end
  end
end
