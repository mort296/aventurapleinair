class AddImages < ActiveRecord::Migration
  def change
  	add_column :activities, :second_image, :string
  	add_column :activities, :second_image_file_name, :string
  	add_column :activities, :third_image, :string
  	add_column :activities, :third_image_file_name, :string
  	add_column :activities, :fourth_image, :string
  	add_column :activities, :fourth_image_file_name, :string
  	add_column :activities, :fifth_image, :string
  	add_column :activities, :fifth_image_file_name, :string

  	add_column :events, :second_image, :string
  	add_column :events, :second_image_file_name, :string
  	add_column :events, :third_image, :string
  	add_column :events, :third_image_file_name, :string
  	add_column :events, :fourth_image, :string
  	add_column :events, :fourth_image_file_name, :string
  	add_column :events, :fifth_image, :string
  	add_column :events, :fifth_image_file_name, :string

  	add_column :locations, :second_image, :string
  	add_column :locations, :second_image_file_name, :string
  	add_column :locations, :third_image, :string
  	add_column :locations, :third_image_file_name, :string
  	add_column :locations, :fourth_image, :string
  	add_column :locations, :fourth_image_file_name, :string
  	add_column :locations, :fifth_image, :string
  	add_column :locations, :fifth_image_file_name, :string
  end
end
