ActiveAdmin.register Comment do
	actions  :index, :edit, :update, :destroy

	index do 
		selectable_column
		column "Nom" do |object|
			object.activity_title
		end

		column "Catégorie du commentaire" do |object|
			object.commentable_type
		end
		column "Nom et email de l'utilisateur" do |object|
			object.user_name + ' - ' + object.user_email
		end
		column "Approuvé" do |object|
	    object.approved? ? 'Approuvé' : 'Non approuvé'
		end
		default_actions
	end
end
