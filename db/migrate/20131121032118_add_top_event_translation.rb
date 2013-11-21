class AddTopEventTranslation < ActiveRecord::Migration
  def up
    TopEvent.create_translation_table!(
      {:text_top => :text, :text_bottom => :text},
      {:migrate_data => true}
    )
  end
 
  def down
    TopEvent.drop_translation_table!
  end
end
