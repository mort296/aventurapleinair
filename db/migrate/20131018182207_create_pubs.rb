class CreatePubs < ActiveRecord::Migration
  def change
    create_table :pubs do |t|
      t.string :image
      t.integer :type_id

      t.timestamps
    end
  end
end
