class AddRelations < ActiveRecord::Migration
  def self.up
  	create_table :activity_location do |t|
      t.belongs_to :activity
      t.belongs_to :location
    end
    create_table :activity_event do |t|
      t.belongs_to :activity
      t.belongs_to :event
    end
    change_table :links do |t|
      t.references :linkable, :polymorphic => true
    end
    remove_column :links, :type
    add_column :activities, :season_id, :integer
    add_column :events, :season_id, :integer
    add_column :administrative_regions, :location_id, :integer
    add_column :activity_categories, :activity_id, :integer
  end
  def self.down
  	drop_table :activity_location
  	drop_table :activity_event
  	add_column :links, :type, :string
  	remove_column :links, :linkable_id
  	remove_column :links, :linkable_type
    remove_column :activities, :season
    remove_column :events, :season
    remove_column :administrative_regions, :location_id
    remove_column :activity_categories, :activity_id
  end
end
