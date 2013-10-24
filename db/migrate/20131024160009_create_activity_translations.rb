class CreateActivityTranslations < ActiveRecord::Migration
  def up
  	Activity.create_translation_table!(
  		{:name => :string, :federation => :string, :website => :string, :interesting_stats => :text, :history => :text, :particularity => :text, :description => :text, :other_infos => :text, :learn => :text, :equipment => :text, :video_link => :string, :image => :string },
  		{:migrate_data => true}
  	)
  end
  def down
  	Activity.drop_translation_table! :migrate_data => true
  end
end
