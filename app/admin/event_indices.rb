ActiveAdmin.register EventIndex do
	menu :label => "Textes de la page de événements groupés"
	form :partial => "form"
	
	actions  :index, :edit, :update

	index do
		column "Dernière modification", :updated_at
		
		default_actions
	end
end
