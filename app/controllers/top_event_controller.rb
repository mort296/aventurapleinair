class TopEventController < ApplicationController
	def index
		@text = TopEvent.first()
		@topEvents = EventRating.all.order('rate').limit(10)
	end
end
