class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :charge_free_phone
      t.string :website
      t.string :gps_coord
      t.decimal :ranking
      t.integer :ranking_amount
      t.string :services
      t.string :intoduction
      t.string :interesting_stats
      t.string :other_info
      t.string :prizes
      t.string :other_distinctions

      t.timestamps
    end
  end
end
