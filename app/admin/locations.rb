ActiveAdmin.register Location do
	form :partial => "form"

	controller do
		def new
			@location = Location.new
			ADDITIONAL_LOCALES.each do |lang|
				@location.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
	end
end
