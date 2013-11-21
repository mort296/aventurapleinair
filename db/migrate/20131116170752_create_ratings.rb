class CreateRatings < ActiveRecord::Migration
  def change
    remove_column :locations, :ranking
    remove_column :locations, :ranking_amount
    remove_column :ratings, :ratable_id
    remove_column :ratings, :ratable_type
    add_column :ratings, :activity_id, :integer
    add_column :ratings, :location_id, :integer
    add_column :ratings, :event_id, :integer
  end
end
