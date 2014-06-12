ActiveAdmin.register TopActivity do
	menu :label => "Texte du haut de la liste des Activités"
	form :partial => "form"
	
	actions  :index, :edit, :update

	index do
		column "Dernière modification", :updated_at
		
		default_actions
	end
end
