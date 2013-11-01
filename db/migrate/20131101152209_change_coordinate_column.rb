class ChangeCoordinateColumn < ActiveRecord::Migration
  def change
  	remove_column :locations, :gps_coord
  	add_column :locations, :gps_longitude, :decimal
  	add_column :locations, :gps_latitude, :decimal
  end
end
