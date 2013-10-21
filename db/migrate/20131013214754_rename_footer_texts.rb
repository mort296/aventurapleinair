class RenameFooterTexts < ActiveRecord::Migration
  def change
  	drop_table :footer_texts
  	rename_table :footerTexts, :footer_texts
  end
end
