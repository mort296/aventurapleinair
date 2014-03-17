class HomeController < ApplicationController
  def index
  	@home = Home.first()
 		
  	@home.who_video_link = @home.who_video_link.gsub('https://', '')
  	@home.who_video_link = @home.who_video_link.gsub('http://', '')
    @menu_event = Event.all().where("online = true")

  	@video = Conred::Video.new(
		  video_url: @home.who_video_link, 
		  width: 425, 
		  height: 250,
		  error_message: "false"
		)
  end
end
