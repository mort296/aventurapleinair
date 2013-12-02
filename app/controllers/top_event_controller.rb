class TopEventController < ApplicationController
	def index
		@text = TopEvent.first()
		@topEvents = Event.all.includes(:event_rating).order('event_ratings.rate DESC').limit(10)
	end
end
