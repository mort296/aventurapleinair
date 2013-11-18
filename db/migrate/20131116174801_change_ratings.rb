class ChangeRatings < ActiveRecord::Migration
  def change
  	rename_table :ratings, :activity_ratings
  	remove_column :activity_ratings, :location_id
  	remove_column :activity_ratings, :event_id

  	create_table :event_ratings do |t|
  		t.decimal "rate",         default: 0.0
	    t.integer "rater_amount", default: 0
	    t.integer "event_id"
  	end

  	create_table :location_ratings do |t|
  		t.decimal "rate",         default: 0.0
	    t.integer "rater_amount", default: 0
	    t.integer "location_id"
  	end
  end
end
