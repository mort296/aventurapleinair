ActiveAdmin.register FooterText do
	menu :label => "Textes du pied de page"
	form :partial => "form"
	
	actions  :index, :edit, :update

	index do
		column "Background image hiver" do |image|
			image_tag image.background_image.url(:thumb_admin)
		end
		column :max_title
		column :max_subtitle
		column :max_text
		column "Image Max" do |image|
			image_tag image.max_image.url(:thumb_admin)
		end
		column "Background image été" do |image|
			image_tag image.background_summer_image.url(:thumb_admin)
		end
		default_actions
	end
end
