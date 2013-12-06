class RemoveUnneededFields < ActiveRecord::Migration
  def change
  	drop_table :top_activity
  	drop_table :top_event
  	drop_table :top_location
  	drop_table :top_10
  end
end
