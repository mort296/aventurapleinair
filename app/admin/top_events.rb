ActiveAdmin.register TopEvent do
	menu :label => "Textes de la page top 10 des événements"
	form :partial => "form"
	menu :if => proc{  }  
	actions  :index, :edit, :update

	index do
		column "Dernière modification", :updated_at
		
		default_actions
	end
end
