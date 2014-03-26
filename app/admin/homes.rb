ActiveAdmin.register Home do
	menu :label => "Accueil", :priority => 1
	form :partial => "form"
	actions  :index, :edit, :update

	index do
		column "Dernière modification", :updated_at
		
		default_actions
	end

end
