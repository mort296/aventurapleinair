class RemoveColumnLocation < ActiveRecord::Migration
  def change
  	remove_column :locations, :useful_informations_id
  end
end
