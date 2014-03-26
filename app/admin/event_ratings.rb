ActiveAdmin.register EventRating do
	belongs_to :event

	actions :all, :except => [:show]
end
