class RemoveTranslationFields < ActiveRecord::Migration
  def change
  	remove_column :activity_translations, :history
  	remove_column :activity_translations, :image
  	remove_column :event_translations, :federation_website
  	remove_column :event_translations, :history
  	remove_column :event_translations, :image
  	remove_column :events, :history
  	remove_column :location_translations, :image
  	add_column :activities, :useful_links, :text
  	add_column :activity_translations, :useful_links, :text
  end
end
