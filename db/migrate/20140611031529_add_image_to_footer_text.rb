class AddImageToFooterText < ActiveRecord::Migration
  def change
    remove_column :footer_texts, :background_image
    remove_column :footer_texts, :background_summer_image
    add_column :footer_texts, :slider1, :string
    add_column :footer_texts, :slider2, :string
    add_column :footer_texts, :slider3, :string
    add_column :footer_texts, :slider4, :string
    add_column :footer_texts, :slider5, :string
    add_column :footer_texts, :slider6, :string
    add_column :footer_texts, :slider7, :string
    add_column :footer_texts, :slider8, :string
    add_column :footer_texts, :slider9, :string
    add_column :footer_texts, :slider10, :string
  end
end
