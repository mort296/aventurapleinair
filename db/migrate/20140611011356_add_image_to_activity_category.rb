class AddImageToActivityCategory < ActiveRecord::Migration
  def change
    add_column :activity_categories, :image, :string
    add_column :activity_categories, :image_file_name, :string
  end
end
