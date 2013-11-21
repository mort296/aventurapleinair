ActiveAdmin.register Activity do
	menu :label => "Activités", :priority => 3
	form :partial => "form"

	after_filter :only => :create do
    activity = Activity.last
    ActivityRating.create(:activity => activity)
  end

	controller do
		def new
			@activity = Activity.new
			ADDITIONAL_LOCALES.each do |lang|
				@activity.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
	end
end
