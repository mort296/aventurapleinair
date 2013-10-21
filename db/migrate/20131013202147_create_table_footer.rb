class CreateTableFooter < ActiveRecord::Migration
  def change
  	remove_column :homes, :max_title
	remove_column :homes, :max_subtitle
	remove_column :homes, :max_text
	remove_column :homes, :max_image
	remove_column :homes, :photograph_title
	remove_column :homes, :photograph_subtitle
	remove_column :homes, :photograph_text
	remove_column :homes, :photograph_image
    create_table :table_footers do |t|
      t.string   "max_title"
      t.string   "max_subtitle"
      t.text     "max_text"
      t.string   "max_image"
      t.string   "photograph_title"
      t.string   "photograph_subtitle"
      t.text     "photograph_text"
      t.string   "photograph_image"
    end
  end
end
