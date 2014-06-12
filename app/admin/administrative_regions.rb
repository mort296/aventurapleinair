ActiveAdmin.register AdministrativeRegion do
	menu :label => "Régions administrative", :priority => 3
	form :partial => "form"

	actions :all, :except => [:show]

	index do
		column :id
		column :name
		
		default_actions
	end
end
