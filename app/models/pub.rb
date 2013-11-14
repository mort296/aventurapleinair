class Pub < ActiveRecord::Base
	validates_presence_of :name, :image, :pub_type

	has_attached_file :image, :styles => { 
		:thumb_menu => "150x150>", 
		:thumb_admin => "100x100>",
		:bottom_pub => "950x>",
		:sidebar_pub => "300x250>"
	}
	
	belongs_to :pub_type
end
