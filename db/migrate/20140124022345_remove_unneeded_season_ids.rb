class RemoveUnneededSeasonIds < ActiveRecord::Migration
  def change
  	remove_column :activities, :season_id
  	remove_column :events, :season_id
  end
end
