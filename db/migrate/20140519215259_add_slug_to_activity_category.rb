class AddSlugToActivityCategory < ActiveRecord::Migration
  def change
  	add_column :activity_categories, :slug, :string
  end
end
