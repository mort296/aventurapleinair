class RenameTablePubTypeColumnType < ActiveRecord::Migration
  def change
  	rename_column :pub_types, :type, :name
  end
end
