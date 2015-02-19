class AddRelationsToTopActivities < ActiveRecord::Migration
  def change
    create_table :top_activities_activities, id: false do |t|
      t.belongs_to :top_activity, index: true
      t.belongs_to :activity, index: true
    end
    create_table :top_activities_locations, id: false do |t|
      t.belongs_to :top_activity, index: true
      t.belongs_to :location, index: true
    end
  end
end
