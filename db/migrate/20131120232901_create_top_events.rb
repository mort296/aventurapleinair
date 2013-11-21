class CreateTopEvents < ActiveRecord::Migration
  def change
    create_table :top_events do |t|
      t.text :text_top
      t.text :text_bottom
      t.integer :pub_id

      t.timestamps
    end
  end
end
