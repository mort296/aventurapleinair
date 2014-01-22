class AddTextField < ActiveRecord::Migration
  def change
  	add_column :locations, :description, :text
  	add_column :location_translations, :description, :text
  end
end
