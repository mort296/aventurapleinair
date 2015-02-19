class RenameRelationTables < ActiveRecord::Migration
  def change
    rename_table :top_activities_activities, :activities_top_activities
    rename_table :top_activities_locations, :locations_top_activities
  end
end
