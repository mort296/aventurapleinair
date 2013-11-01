class RenameTitleColumnInActivityCategory < ActiveRecord::Migration
  def change
  	rename_column :activity_categories, :title, :name
  end
end
