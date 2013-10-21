class FooterText < ActiveRecord::Base
	mount_uploader :max_image, ImageUploader
	mount_uploader :photograph_image, ImageUploader
end
