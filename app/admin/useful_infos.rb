ActiveAdmin.register UsefulInfo do
	index do
		column :name
		column "Icon" do |image|
			image_tag image.icon_url(:icon_size)
		end
		default_actions
	end
end
