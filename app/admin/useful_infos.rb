ActiveAdmin.register UsefulInfo do
	menu :label => "Informations utiles"
	form :partial => "form"

	actions :all, :except => [:show]
	
	controller do
		def new
			@useful_info = UsefulInfo.new
			ADDITIONAL_LOCALES.each do |lang|
				@useful_info.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
	end	

	index do
		column :id
		column :name
		column "Icon" do |image|
			image_tag image.icon.url(:icon)
		end
		default_actions
	end
end
