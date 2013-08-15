class RenameTables < ActiveRecord::Migration
  def self.up
    rename_table :activity_event, :activities_events
    rename_table :activity_location, :activities_locations
  end

 def self.down
    rename_table :activities_events, :activity_event
    rename_table :activities_locations, :activity_location
 end
end
