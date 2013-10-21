class ChangeDb < ActiveRecord::Migration
  def change
  	add_column :homes, :pub1_id, :integer
  	add_column :homes, :pub2_id, :integer
  	add_column :pubs, :name, :string
  	remove_column :homes, :about_us
  	remove_column :homes, :pub_id
  end
end
