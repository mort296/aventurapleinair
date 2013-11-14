class AddImageFileName < ActiveRecord::Migration
  def change
  	add_column(:events, :image_file_name, :string)
  	add_column(:footer_texts, :max_image_file_name, :string)
  	add_column(:footer_texts, :photograph_image_file_name, :string)
  	add_column(:homes, :background_image_file_name, :string)
  	add_column(:homes, :featured_image_file_name, :string)
  	add_column(:locations, :image_file_name, :string)
  	add_column(:pubs, :image_file_name, :string)
  	add_column(:useful_infos, :icon_file_name, :string)
  end
end
