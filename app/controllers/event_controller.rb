class EventController < ApplicationController
  def index
  	@eventText = EventIndex.first()
  	@events = Event.all().where("online = true")
  end

  def show
  	@event = Event.find(params[:id])
  end
end
