class EventController < ApplicationController
  def index
  	@events = Event.all().where("name IS NOT NULL")
  end

  def show
  	@event = Event.find(params[:id])
  end
end
