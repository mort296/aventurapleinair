class ChangeHomePub < ActiveRecord::Migration
  def change
  	remove_column :homes, :pub_two_id
  	rename_column :homes, :pub_one_id, :pub_id
  end
end
