class CreatePubTypes < ActiveRecord::Migration
  def change
    create_table :pub_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
