class AddSliderImagesToHome < ActiveRecord::Migration
  def change
  	add_column :homes, :slider1, :string
    add_column :homes, :slider2, :string
    add_column :homes, :slider3, :string
    add_column :homes, :slider4, :string
    add_column :homes, :slider5, :string
  	add_column :homes, :slider1_file_name, :string
    add_column :homes, :slider2_file_name, :string
    add_column :homes, :slider3_file_name, :string
    add_column :homes, :slider4_file_name, :string
    add_column :homes, :slider5_file_name, :string
  end
end
