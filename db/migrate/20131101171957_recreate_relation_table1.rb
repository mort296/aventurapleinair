class RecreateRelationTable1 < ActiveRecord::Migration
  def change
  	drop_table :useful_informations
  	drop_table :locations_useful_informations
  end
end
