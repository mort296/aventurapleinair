class RenameFootersToFooterText < ActiveRecord::Migration
  def change
  	drop_table :table_footers
  	rename_table :footers, :footerTexts
  end
end
