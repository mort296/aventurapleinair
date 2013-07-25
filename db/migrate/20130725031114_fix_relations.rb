class FixRelations < ActiveRecord::Migration
  def self.up
    remove_column :administrative_regions, :location_id
    remove_column :activity_categories, :activity_id
    add_column :locations, :administrative_regions_id, :integer
    add_column :activities, :activity_categories_id, :integer
  end
  def self.down
    add_column :administrative_regions, :location_id, :integer
    add_column :activity_categories, :activity_id, :integer
    remove_column :locations, :administrative_regions_id, :integer
    remove_column :activities, :activity_categories_id, :integer
  end
end
