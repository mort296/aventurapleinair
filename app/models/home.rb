class Home < ActiveRecord::Base
	mount_uploader :background_image, ImageUploader
	mount_uploader :featured_image, ImageUploader
	mount_uploader :max_image, ImageUploader
	mount_uploader :photograph_image, ImageUploader
end
