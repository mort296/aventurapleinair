class ImageFileName < ActiveRecord::Migration
  def change
  	add_column(:activities, :image_file_name, :string)
  end
end
