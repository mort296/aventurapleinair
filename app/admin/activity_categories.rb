ActiveAdmin.register ActivityCategory do
	menu :label => "Catégories d'activités", :priority => 3
	form :partial => "form"

	actions :all, :except => [:show]

	controller do
		def new
			@activity_category = ActivityCategory.new
			ADDITIONAL_LOCALES.each do |lang|
				@activity_category.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
		
		def find_resource
			scoped_collection.friendly.find(params[:id])
		end
	end	

	index do
		column :id
		column :name
		column "Image" do |image|
			image_tag image.image.url(:thumb_admin) if image.image?
		end
		
		default_actions
	end
end
