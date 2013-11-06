class AddSeasonTranslation < ActiveRecord::Migration
  def up
    Season.create_translation_table!(
      {:name => :string},
      {:migrate_data => true}
    )
  end
 
  def down
    Season.drop_translation_table!
  end
end
