class AddAboutPageTranslation < ActiveRecord::Migration
  def up
    AboutPage.create_translation_table!(
      {:content => :text},
      {:migrate_data => true}
    )
  end
 
  def down
    AboutPage.drop_translation_table!
  end
end
