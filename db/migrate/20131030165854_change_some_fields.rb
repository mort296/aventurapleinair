class ChangeSomeFields < ActiveRecord::Migration
  def change
  	drop_table :links
  	drop_table :useful_links
  	add_column :activities, :link, :text
  	add_column :events, :link, :text
  	add_column :locations, :link, :text
  end
end
