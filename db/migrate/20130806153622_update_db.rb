class UpdateDb < ActiveRecord::Migration
  def self.up
  	change_table :events do |t|
  		t.string :name
  		t.boolean :online
  		t.belongs_to :location
  	end

  	change_table :activities do |t|
  		t.string :video_link
  	end

  	create_table :top_10 do |t|
  		t.references :toptable, polymorphic: true
  		t.string :name
  		t.decimal :rating
  	end

  end
  def self.down
  	drop_table :top_10

  	change_table :activities do |t|
  		t.remove :video_link
  	end

  	change_table :events do |t|
  		t.remove :name
  		t.remove :online
  		t.remove :location_id
  	end
  end
end
