class RenameLocationColumn < ActiveRecord::Migration
  def self.up
    rename_column :locations ,:administrative_regions_id, :administrative_region_id
  end

 def self.down
    rename_column :locations ,:administrative_region_id, :administrative_regions_id
 end
end
