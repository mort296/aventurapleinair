ActiveAdmin.register Home do
	actions  :index, :edit, :update

	index do
		column :title
		column :who_one_title
		column :who_one_text
		column :who_two_title
		column :who_two_text
		column :who_video_link
		column "Background image" do |image|
			image_tag image.background_image_url(:thumb_admin)
		end
		column "Featured image" do |image|
			image_tag image.featured_image_url(:thumb_admin)
		end
		column :featured_caption_place
		column :featured_caption_activity
		column :promotion_text
		column "Pub sidebar" do |image|
			image_tag image.pub1.image_url(:thumb_admin) if image.pub1
		end
		column "Pub bottom" do |image|
			image_tag image.pub2.image_url(:thumb_admin) if image.pub2
		end
		default_actions
	end

	form do |f|
		f.inputs do
			f.inputs :background_image
			f.inputs :title
			f.inputs :who_one_title
			f.inputs :who_one_text
			f.inputs :who_two_title
			f.inputs :who_two_text
			f.inputs :who_video_link
			f.inputs :featured_image
			f.inputs :featured_caption_place
			f.inputs :featured_caption_activity
			f.inputs :promotion_text
			f.inputs :pub1
			f.inputs :pub2
		end
		
		f.actions
	end
end
