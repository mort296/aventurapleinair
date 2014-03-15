class AddBgImageSummer < ActiveRecord::Migration
  def change
  	rename_column :footer_texts, :photograph_image_file_name, :background_summer_image_file_name
  	rename_column :footer_texts, :photograph_image, :background_summer_image
  	remove_column :footer_texts, :photograph_title
  	remove_column :footer_texts, :photograph_subtitle
  	remove_column :footer_texts, :photograph_text
  end
end
