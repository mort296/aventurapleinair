class AddTopActivityTranslation < ActiveRecord::Migration
  def up
    TopActivity.create_translation_table!(
      {:text_top => :text, :text_bottom => :text},
      {:migrate_data => true}
    )
  end
 
  def down
    TopActivity.drop_translation_table!
  end
end
