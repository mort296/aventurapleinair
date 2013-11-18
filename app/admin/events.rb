ActiveAdmin.register Event do
	menu :label => "Événements", :priority => 4
	form :partial => "form"

	after_filter :only => :create do
    event = Event.last
    EventRating.create(:event => event)
  end

	controller do
		def new
			@event = Event.new
			ADDITIONAL_LOCALES.each do |lang|
				@event.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
	end
end
