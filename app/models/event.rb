class Event < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :season
	belongs_to :location
	has_and_belongs_to_many :activities
	has_many :links, as: :linkable
	accepts_nested_attributes_for :links
end
