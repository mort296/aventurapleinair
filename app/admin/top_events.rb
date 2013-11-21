ActiveAdmin.register TopEvent do
	menu :label => "Textes de la page top 10 des événements"
	form :partial => "form"
	
	actions  :index, :edit, :update
end
