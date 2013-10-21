class Home < ActiveRecord::Base
	mount_uploader :background_image, ImageUploader
	mount_uploader :featured_image, ImageUploader
	belongs_to :pub1, :class_name => "Pub"
	belongs_to :pub2, :class_name => "Pub"
end
