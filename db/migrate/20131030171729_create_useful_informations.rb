class CreateUsefulInformations < ActiveRecord::Migration
  def change
    create_table :useful_informations do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
