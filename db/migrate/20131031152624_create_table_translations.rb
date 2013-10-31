class CreateTableTranslations < ActiveRecord::Migration
  def up
    ActivityCategory.create_translation_table!(
      {:name => :string},
      {:migrate_data => true}
    )
    Season.create_translation_table!(
      {:name => :string},
      {:migrate_data => true}
    )
    AdministrativeRegion.create_translation_table!(
      {:name => :string},
      {:migrate_data => true}
    )
    drop_table :activities_translations
  end
 
  def down
    ActivityCategory.drop_translation_table!
    Season.drop_translation_table!
    AdministrativeRegion.drop_translation_table!
    drop_table :activities_translations
  end
end
