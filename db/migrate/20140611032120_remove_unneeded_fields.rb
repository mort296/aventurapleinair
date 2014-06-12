class RemoveUnneededFields < ActiveRecord::Migration
  def change
  	remove_column :footer_texts, :max_title
  	remove_column :footer_texts, :max_subtitle
    remove_column :footer_texts, :max_text
    remove_column :footer_texts, :max_image
    remove_column :footer_texts, :max_image_file_name
    remove_column :footer_texts, :background_summer_image_file_name
    remove_column :footer_texts, :background_image_file_name

    remove_column :footer_text_translations, :max_title
    remove_column :footer_text_translations, :max_subtitle
    remove_column :footer_text_translations, :max_text
    remove_column :footer_text_translations, :photograph_title
    remove_column :footer_text_translations, :photograph_subtitle
    remove_column :footer_text_translations, :photograph_text

    add_column :footer_texts, :slider1_file_name, :string
    add_column :footer_texts, :slider2_file_name, :string
    add_column :footer_texts, :slider3_file_name, :string
    add_column :footer_texts, :slider4_file_name, :string
    add_column :footer_texts, :slider5_file_name, :string
    add_column :footer_texts, :slider6_file_name, :string
    add_column :footer_texts, :slider7_file_name, :string
    add_column :footer_texts, :slider8_file_name, :string
    add_column :footer_texts, :slider9_file_name, :string
    add_column :footer_texts, :slider10_file_name, :string
  end
end
