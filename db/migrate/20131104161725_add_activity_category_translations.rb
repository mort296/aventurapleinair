class AddActivityCategoryTranslations < ActiveRecord::Migration
  def up
    ActivityCategory.create_translation_table!(
      {:name => :string},
      {:migrate_data => true}
    )
  end
 
  def down
    ActivityCategory.drop_translation_table!
  end
end
