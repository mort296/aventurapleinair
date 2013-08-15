class ChangeColumnId2 < ActiveRecord::Migration
  def self.up
  	rename_column :activities, :id_activity_categories, :activity_category_id
  end
  def self.down
  	rename_column :activities, :activity_category_id, :id_activity_categories
  end
end
