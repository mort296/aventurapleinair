ActiveAdmin.register PoliticalReview do
	menu :label => "Avis politique", :priority => 2
	form :partial => "form"

	actions  :index, :edit, :update

	index do
		column "Dernière modification", :updated_at
		
		default_actions
	end
end
