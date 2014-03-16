class EquipmentTranslation < ActiveRecord::Migration
  def up
    Equipment.create_translation_table!(
      {:name => :string, :description => :text},
      {:migrate_data => true}
    )
  end
 
  def down
    Equipment.drop_translation_table!
  end
end