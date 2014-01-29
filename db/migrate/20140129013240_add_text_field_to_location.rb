class AddTextFieldToLocation < ActiveRecord::Migration
  def change
  	add_column :locations, :link_text, :string
  	add_column :location_translations, :link_text, :string
  end
end
