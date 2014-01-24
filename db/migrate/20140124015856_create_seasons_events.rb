class CreateSeasonsEvents < ActiveRecord::Migration
  def change
    create_table :events_seasons do |t|
    	t.belongs_to :season
      t.belongs_to :event
    end
    create_table :activities_seasons do |t|
    	t.belongs_to :season
      t.belongs_to :activity
    end
  end
end
