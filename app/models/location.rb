class Location < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :administrative_region
	has_and_belongs_to_many :activities
	has_many :links, as: :linkable
end
