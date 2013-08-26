class AddUsefulLinks < ActiveRecord::Migration
  def self.up
  	create_table :useful_links do |t|
      t.belongs_to :location
      t.string :name
      t.string :icon
      t.timestamps
    end
		
    add_column :activities, :pub_id, :integer
    add_column :locations, :pub_id, :integer
    add_column :top_10, :text_top, :string
    add_column :top_10, :text_bottom, :string

    remove_column :top_10, :toptable_id
    remove_column :top_10, :toptable_type
    remove_column :top_10, :name
    remove_column :top_10, :rating

    create_table "ratings", force: true do |t|
			t.integer "ratable_id"
			t.string "ratable_type"
			t.decimal "rate",         default: 0.0
			t.integer "rater_amount", default: 0
		end
  end
  def down.up
  	remove_column :activities, :pub_id
    remove_column :locations, :pub_id
    remove_column :top_10, :text_top
    remove_column :top_10, :text_bottom

    add_column :top_10, :toptable_id, :integer
    add_column :top_10, :toptable_type, :string
    add_column :top_10, :name, :string
    add_column :top_10, :rating, :decimal

  	drop_table :useful_links
  	drop_table :ratings
  	remove_column :activities, :pub_id
    remove_column :locations, :pub_id
  end
end
