class AddTranslatio < ActiveRecord::Migration
  def up
    UsefulInfo.create_translation_table!(
      {:name => :string},
      {:migrate_data => true}
    )
  end
 
  def down
    UsefulInfo.drop_translation_table!
  end
end
