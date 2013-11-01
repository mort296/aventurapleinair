class UsefulInfo < ActiveRecord::Base
	mount_uploader :icon, IconUploader

	has_and_belongs_to_many :locations
end
