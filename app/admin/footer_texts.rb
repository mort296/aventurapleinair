ActiveAdmin.register FooterText do
	actions  :index, :edit, :update

	index do
		column :max_title
		column :max_subtitle
		column :max_text
		column "Image Max" do |image|
			image_tag image.max_image_url(:thumb_admin)
		end
		column :photograph_title
		column :photograph_subtitle
		column :photograph_text
		column "Image Photographe" do |image|
			image_tag image.photograph_image_url(:thumb_admin)
		end
		default_actions
	end
end
