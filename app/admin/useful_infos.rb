ActiveAdmin.register UsefulInfo do
	menu :label => "Informations utiles"
	form :partial => "form"
	
	index do
		column :name
		column "Icon" do |image|
			image_tag image.icon.url(:icon)
		end
		default_actions
	end
end
