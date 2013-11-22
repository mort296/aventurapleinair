class EventController < ApplicationController
  def index
  	@eventText = EventIndex.first()
  	@events = Event.all().where("name IS NOT NULL")
  end

  def show
  	@event = Event.find(params[:id])
  end
end
