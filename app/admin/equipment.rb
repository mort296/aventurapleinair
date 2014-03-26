ActiveAdmin.register Equipment do
	menu :label => "Équipements"
	form :partial => "form"

	actions :all, :except => [:show]
	
	controller do
		def new
			@equipment = Equipment.new
			ADDITIONAL_LOCALES.each do |lang|
				@equipment.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
	end

	index do
		column :id
		column :name

		column "image" do |image|
			image_tag image.image.url(:thumb_admin)
		end
		
		default_actions
	end
end
