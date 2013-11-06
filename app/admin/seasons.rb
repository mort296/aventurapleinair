ActiveAdmin.register Season do
	menu :label => "Saisons", :priority => 6
	form :partial => "form"

	controller do
		def new
			@season = Season.new
			ADDITIONAL_LOCALES.each do |lang|
				@season.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
	end	
end
