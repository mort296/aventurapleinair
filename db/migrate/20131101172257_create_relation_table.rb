class CreateRelationTable < ActiveRecord::Migration
  def change
    create_table :locations_useful_infos do |t|
      t.belongs_to :location
      t.belongs_to :useful_info
    end
  end
end
