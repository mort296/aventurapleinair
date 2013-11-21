class RenameTables < ActiveRecord::Migration
  def change
  	rename_table :top_activities, :top_activity
  	rename_table :top_events, :top_event
  	rename_table :top_locations, :top_location
  end
end
