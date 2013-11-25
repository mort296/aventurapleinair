class ChangeCommentsTable < ActiveRecord::Migration
  def change
  	remove_column :comments, :user_id
  	remove_column :comments, :title
  	add_column :comments, :activity_title, :string
  end
end
