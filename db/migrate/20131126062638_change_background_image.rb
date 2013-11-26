class ChangeBackgroundImage < ActiveRecord::Migration
  def change
  	remove_column :homes, :background_image_file_name
  	add_column :footer_texts, :background_image_file_name, :string
  end
end
