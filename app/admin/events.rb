ActiveAdmin.register Event do
	form do |f|
		f.inputs do
			f.input :name
			f.input :date_start
			f.input :date_end
			f.input :website
			f.input :federation
			f.input :federation_website
		    f.input :interesting_stats
		    f.input :history
		    f.input :description
		    f.input :other_infos
		    f.input :season
		    f.input :online
		    f.input :location

		    f.has_many :links do |link_f|
				link_f.input :url
			end
		end
		
		f.actions
	end

end
