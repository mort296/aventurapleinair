ActiveAdmin.register AboutPage do
	menu :label => "Pages à propos", :priority => 2
	form :partial => "form"

	actions  :index, :edit, :update

	controller do
		def new
			@about_page = AboutPage.new
			ADDITIONAL_LOCALES.each do |lang|
				@about_page.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
	end	
end
