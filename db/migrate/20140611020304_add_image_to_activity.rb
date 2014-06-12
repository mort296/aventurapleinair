class AddImageToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :icon_list, :string
    add_column :activities, :icon_list_file_name, :string
  end
end
