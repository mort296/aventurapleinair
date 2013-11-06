class HomeController < ApplicationController
  def index
  	@home = Home.first()

  	@video_id = @home.who_video_link.sub(/^https?\:\/\//, '').sub(/^www./,'').gsub('vimeo.com/', '')	
	
  end
end
