class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date_start
      t.date :date_end
      t.string :website
      t.string :federation
      t.string :federation_website
      t.string :interesting_stats
      t.string :history
      t.string :description
      t.string :other_info

      t.timestamps
    end
  end
end
