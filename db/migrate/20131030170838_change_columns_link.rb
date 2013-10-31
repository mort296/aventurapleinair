class ChangeColumnsLink < ActiveRecord::Migration
  def change
  	change_column :activities, :link, :string
  	change_column :events, :link, :string
  	change_column :locations, :link, :string
  end
end
