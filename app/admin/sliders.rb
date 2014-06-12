ActiveAdmin.register Slider do
	menu :label => "Images du slider", :priority => 18
	form :partial => "form"
	
	actions  :index, :new, :create, :destroy, :edit, :update

	index do
		column "slider1" do |image|
			image_tag image.slider1.url(:thumb_admin) if image.slider1?
		end
		
		default_actions
	end
end
