class AddMaxTextToHomes < ActiveRecord::Migration
  def change
  	add_column :homes, :max_title, :string
  	add_column :homes, :max_subtitle, :string
    add_column :homes, :max_text, :text
    add_column :homes, :max_image, :string

  	add_column :homes, :photograph_title, :string
  	add_column :homes, :photograph_subtitle, :string
    add_column :homes, :photograph_text, :text
    add_column :homes, :photograph_image, :string
  end
end
