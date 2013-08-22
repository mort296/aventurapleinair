class AddUsefulLinks < ActiveRecord::Migration
  def self.up
  	create_table :useful_links do |t|
      t.belongs_to :location
      t.string :name
      t.string :icon
      t.timestamps
    end
    drop_table :top_10

    create_table "ratings", force: true do |t|
			t.integer "ratable_id"
			t.string "ratable_type"
			t.decimal "rate",         default: 0.0
			t.integer "rater_amount", default: 0
		end
  end
  def down.up
  	drop_table :useful_links
  	drop_table :ratings
  end
end
