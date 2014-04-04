class AboutPageController < ApplicationController
  def index
  	@about = AboutPage.first()
  end

  def contact
  end
  
  def xavier
  end
end
