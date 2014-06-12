ActiveAdmin.register Activity do
	menu :label => "Activités", :priority => 4
	form :partial => "form"

	actions :all, :except => [:show]
	
	#after_filter :only => :create do
   # activity = Activity.last
    #ActivityRating.create(:activity => activity)
  #end

  before_filter :only => :destroy do
  	activityRating = ActivityRating.where(:activity_id => params[:id])
  	activityRating.delete(activityRating)
  end

	controller do
		def new
			@activity = Activity.new
			ADDITIONAL_LOCALES.each do |lang|
				@activity.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
		def find_resource
			scoped_collection.friendly.find(params[:id])
		end
	end

	index do
		column :id
		column :name
		column "En ligne" do |object|
	    object.online? ? '<span class="online">En ligne</span>'.html_safe : '<span class="not">Hors ligne</span>'.html_safe
		end
		
		default_actions
	end
end
