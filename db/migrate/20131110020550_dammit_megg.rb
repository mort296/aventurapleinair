class DammitMegg < ActiveRecord::Migration
  def up
  	Activity.create_translation_table!(
  		{:name => :string, :federation => :string, :particularity => :text, :description => :text, :other_infos => :text, :learn => :text, :equipment => :text, :useful_links => :text, :video_link => :string },
  		{:migrate_data => true}
  	)
  end
  def down
  	Activity.drop_translation_table! :migrate_data => true
  end
end
