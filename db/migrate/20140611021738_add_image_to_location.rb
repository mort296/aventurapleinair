class AddImageToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :icon_list, :string
    add_column :locations, :icon_list_file_name, :string
  end
end
