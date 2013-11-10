class UsefulInfo < ActiveRecord::Base
	validates_presence_of :name, :icon
	
	mount_uploader :icon, IconUploader

	has_and_belongs_to_many :locations
end
