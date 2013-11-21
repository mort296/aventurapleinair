class AddTopLocationTranslation < ActiveRecord::Migration
  def up
    TopLocation.create_translation_table!(
      {:text_top => :text, :text_bottom => :text},
      {:migrate_data => true}
    )
  end
 
  def down
    TopLocation.drop_translation_table!
  end
end
