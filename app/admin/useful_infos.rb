ActiveAdmin.register UsefulInfo do
	menu :label => "Informations utiles"
	index do
		column :name
		column "Icon" do |image|
			image_tag image.icon_url(:icon_size)
		end
		default_actions
	end
end
