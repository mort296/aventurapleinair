ActiveAdmin.register TopActivity do
	menu :label => "Textes de la page top 10 des Activités"
	form :partial => "form"
	
	actions  :index, :edit, :update

	index do
		column "Dernière modification", :updated_at
		
		default_actions
	end
end
