class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :federation
      t.string :website
      t.string :interesting_stats
      t.string :history
      t.string :particularity
      t.string :description
      t.string :other_infos
      t.string :learn
      t.string :equipment

      t.timestamps
    end
  end
end
