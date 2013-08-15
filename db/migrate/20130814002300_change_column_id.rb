class ChangeColumnId < ActiveRecord::Migration
  def self.up
  	rename_column :activities, :activity_categories_id, :id_activity_categories
  end
  def self.down
  	rename_column :activities, :id_activity_categories, :activity_categories_id
  end
end
