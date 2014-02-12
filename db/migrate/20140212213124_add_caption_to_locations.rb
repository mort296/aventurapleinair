class AddCaptionToLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :image_caption, :string
  	add_column :events, :image_caption, :string
  end
end
