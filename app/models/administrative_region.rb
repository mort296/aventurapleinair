class AdministrativeRegion < ActiveRecord::Base
	validates_presence_of :name	
	has_many :location
end
