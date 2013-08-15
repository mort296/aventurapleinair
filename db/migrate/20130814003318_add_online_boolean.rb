class AddOnlineBoolean < ActiveRecord::Migration
  def self.up
  	add_column :activities, :online, :boolean
  	add_column :locations, :online, :boolean
  end
  def self.down
  	remove_column :activities, :online
  	remove_column :locations, :online
  end
end
