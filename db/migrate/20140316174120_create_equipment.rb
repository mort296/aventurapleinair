class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :image_file_name

      t.timestamps
    end
  end
end
