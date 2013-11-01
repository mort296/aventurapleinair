class CreateTableLocationUsefulInfo < ActiveRecord::Migration
  def change
    create_table :locations_useful_informations do |t|
      t.integer :useful_information_id
      t.integer :location_id
    end
  end
end
