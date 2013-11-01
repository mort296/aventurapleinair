class CreateUsefulInfos < ActiveRecord::Migration
  def change
    create_table :useful_infos do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
