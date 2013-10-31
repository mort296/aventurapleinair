class ChangeColumns < ActiveRecord::Migration
  def change
  	add_column :locations, :useful_informations_id, :integer
  end
end
