class AboutPageController < ApplicationController
  def index
  	@about = AboutPage.first()
  end
  def show
  	
  end
end
