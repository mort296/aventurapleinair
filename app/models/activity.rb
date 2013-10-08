class Activity < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :season
	belongs_to :activity_category
	has_and_belongs_to_many :events
	has_and_belongs_to_many :locations
	has_many :links, as: :linkable
end
