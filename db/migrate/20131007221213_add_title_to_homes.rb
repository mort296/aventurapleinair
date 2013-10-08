class AddTitleToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :title, :string
  end
end
