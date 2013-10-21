class RenamePhotograhTextToPhotographText < ActiveRecord::Migration
  def change
  	rename_column :footer_texts, :photograh_text, :photograph_text
  end
end
