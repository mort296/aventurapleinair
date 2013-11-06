class RemoveFooterTranslation < ActiveRecord::Migration
  def up
    FooterText.drop_translation_table!
  end
 
  def down
    FooterText.drop_translation_table!
  end
end
