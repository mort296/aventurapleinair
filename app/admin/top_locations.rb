ActiveAdmin.register TopLocation do
	menu :label => "Textes de la page top 10 des lieux"
	form :partial => "form"
	
	actions  :index, :edit, :update
end
