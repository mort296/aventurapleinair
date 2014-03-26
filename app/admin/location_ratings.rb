ActiveAdmin.register LocationRating do
	belongs_to :location
	
	actions :all, :except => [:show]
end
