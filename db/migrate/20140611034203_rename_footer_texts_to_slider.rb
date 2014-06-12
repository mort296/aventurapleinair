class RenameFooterTextsToSlider < ActiveRecord::Migration
  def change
  	rename_table :footer_texts, :sliders
  	drop_table :footer_text_translations
  end
end
