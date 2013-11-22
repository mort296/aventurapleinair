class AddEventIndexTranslations < ActiveRecord::Migration
  def up
    EventIndex.create_translation_table!(
      {:text_top => :text},
      {:migrate_data => true}
    )
  end
 
  def down
    EventIndex.drop_translation_table!
  end
end
