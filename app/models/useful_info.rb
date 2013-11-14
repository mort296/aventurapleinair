class UsefulInfo < ActiveRecord::Base
	validates_presence_of :name, :icon

	has_attached_file :icon, :styles => { 
	    :icon => "30x30>"
	  }

	has_and_belongs_to_many :locations
end
