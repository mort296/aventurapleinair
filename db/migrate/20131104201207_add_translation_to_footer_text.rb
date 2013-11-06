class AddTranslationToFooterText < ActiveRecord::Migration
  def up
    FooterText.create_translation_table!(
      {:max_title => :string, :max_subtitle => :string, :max_text => :text, :photograph_title => :string, :photograph_subtitle => :string, :photograph_text => :text},
      {:migrate_data => true}
    )
  end
 
  def down
    FooterText.drop_translation_table!
  end
end
