class CreateEventIndices < ActiveRecord::Migration
  def change
    create_table :event_indices do |t|
      t.text :text_top

      t.timestamps
    end
  end
end
