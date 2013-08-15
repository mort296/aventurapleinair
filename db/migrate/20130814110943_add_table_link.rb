class AddTableLink < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :url
      t.references :linkable, polymorphic: true
    end
  end
  def self.down
  	drop_table :links
  end
end
