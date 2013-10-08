class AddImageToModels < ActiveRecord::Migration
  def change
  	add_column :locations, :image, :string
  	add_column :events, :image, :string
  	add_column :activities, :image, :string

  	create_table :pub do |t|
  		t.string :image
  		t.string :type
  	end
  end
end
