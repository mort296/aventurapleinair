class HomeController < ApplicationController
  def index
  	@home = Home.first()
 
  	@video = Conred::Video.new(
		  video_url: @home.who_video_link, 
		  width: 425, 
		  height: 250,
		  error_message: "false"
		)
  end
end
