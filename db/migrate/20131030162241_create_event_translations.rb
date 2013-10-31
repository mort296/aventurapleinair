class CreateEventTranslations < ActiveRecord::Migration
  def up
  	Event.create_translation_table!(
  		{:website => :string, :federation => :string, :federation_website => :string, :interesting_stats => :text, :history => :text, :description => :text, :name => :string, :other_infos => :text, :image => :string },
  		{:migrate_data => true}
  	)
  end
  def down
  	Event.drop_translation_table! :migrate_data => true
  end
end
