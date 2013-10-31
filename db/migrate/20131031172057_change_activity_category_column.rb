class ChangeActivityCategoryColumn < ActiveRecord::Migration
  def change
  	rename_column :activity_categories, :name, :title
  	rename_column :activity_category_translations, :name, :title
  end
end
