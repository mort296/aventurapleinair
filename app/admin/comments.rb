ActiveAdmin.register Comment do
	actions  :index, :edit, :update, :destroy

	index do 
		selectable_column
		column "Nom de l'activité" do |object|
			object.activity_title
		end
		column "Commentaire" do |object|
			object.comment
		end
		column "Nom de l'utilisateur" do |object|
			object.user_name
		end
		column "Email de l'utilisateur" do |object|
			object.user_email
		end
		column "Date" do |object|
			object.created_at
		end
		column "Approuvé" do |object|
	    object.approved? ? 'Approuvé' : 'Non approuvé'
		end
		default_actions
	end
end
