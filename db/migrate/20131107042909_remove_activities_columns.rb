class RemoveActivitiesColumns < ActiveRecord::Migration
  def change
  	remove_column :activities, :history
  	remove_column :activities, :interesting_stats
  	remove_column :activities, :link
  end
end
