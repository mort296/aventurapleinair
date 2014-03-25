class AboutPageController < ApplicationController
  def index
  	@about = AboutPage.first()
  end
  
  def xavier
  end
end
