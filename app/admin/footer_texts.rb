ActiveAdmin.register FooterText do
	menu :label => "Images de fond", :priority => 18
	form :partial => "form"
	
	actions  :index, :edit, :update

	index do
		column "Background image hiver" do |image|
			image_tag image.background_image.url(:thumb_admin)
		end
		column "Background image été" do |image|
			image_tag image.background_summer_image.url(:thumb_admin)
		end
		default_actions
	end
end
