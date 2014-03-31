ActiveAdmin.register Location do
	menu :label => "Lieux", :priority => 5
	form :partial => "form"

	actions :all, :except => [:show]
	
  before_filter :only => :destroy do
  	locationRating = LocationRating.where(:location_id => params[:id])
  	locationRating.delete(locationRating)
	end

	controller do
		def new
			@location = Location.new
			ADDITIONAL_LOCALES.each do |lang|
				@location.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
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
