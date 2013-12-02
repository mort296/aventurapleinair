ActiveAdmin.register Location do
	menu :label => "Lieux", :priority => 5
	form :partial => "form"

	after_filter :only => :create do
    location = Location.last
    LocationRating.create(:location => location)
  end

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
	end
end
