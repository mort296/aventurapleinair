ActiveAdmin.register Activity do
	form :partial => "form"

	controller do
		def new
			@activity = Activity.new
			ADDITIONAL_LOCALES.each do |lang|
				@activity.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
	end
end
