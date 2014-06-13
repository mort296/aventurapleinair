class RemoveImagesFile < ActiveRecord::Migration
  def change
  	remove_column :sliders, :slider2_file_name
    remove_column :sliders, :slider3_file_name
    remove_column :sliders, :slider4_file_name
    remove_column :sliders, :slider5_file_name
    remove_column :sliders, :slider6_file_name
    remove_column :sliders, :slider7_file_name
    remove_column :sliders, :slider8_file_name
    remove_column :sliders, :slider9_file_name
    remove_column :sliders, :slider10_file_name
  end
end
