ActiveAdmin.register PoliticalReview do
	menu :label => "Avis politique"
	form :partial => "form"

	actions  :index, :edit, :update

	controller do
		def new
			@political_review = PoliticalReview.new
			ADDITIONAL_LOCALES.each do |lang|
				@political_review.translations.find_or_initialize_by_locale(lang[0]) unless lang[0] == :fr
			end
		end
	end
end
