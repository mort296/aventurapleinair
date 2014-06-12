ActiveAdmin.register Pub do
	menu :label => "Publicités", :priority => 7
	menu :if => proc{  }  
	form :partial => "form"

	actions :all, :except => [:show]

	index do
		column :id
		column :name
		column "Image" do |image|
			image_tag image.image.url(:thumb_admin)
		end
		default_actions
	end
end
