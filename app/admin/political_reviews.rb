ActiveAdmin.register PoliticalReview do
	menu :label => "Avis politique"
	form :partial => "form"

	actions  :index, :edit, :update

	index do
		column "Dernière modification", :updated_at
		
		default_actions
	end
end
