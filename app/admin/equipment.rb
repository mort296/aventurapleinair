ActiveAdmin.register Equipment do
	menu :label => "Équipements"
	form :partial => "form"

	controller do
		def new
			@equipment = Equipment.new
			ADDITIONAL_LOCALES.each do |lang|
				@equipment.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
	end
end
