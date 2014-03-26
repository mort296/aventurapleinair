ActiveAdmin.register AboutPage do
	menu :label => "Pages à propos", :priority => 2
	form :partial => "form"

	actions  :index, :edit, :update

	index do
		column "Dernière modification", :updated_at
		
		default_actions
	end
end
