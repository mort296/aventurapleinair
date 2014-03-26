ActiveAdmin.register ActivityRating do
	belongs_to :activity

	actions :all, :except => [:show]
end
