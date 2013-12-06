class AddAboutPage < ActiveRecord::Migration
  def change
  	remove_column :locations, :services
  	remove_column :location_translations, :services
  	remove_column :locations, :interesting_stats
  	remove_column :location_translations, :interesting_stats
  	remove_column :locations, :prizes
  	remove_column :locations, :other_distinctions
  	remove_column :locations, :introduction
  	remove_column :locations, :other_infos
  	remove_column :location_translations, :prizes
  	remove_column :location_translations, :other_distinctions
  	remove_column :location_translations, :introduction
  	remove_column :location_translations, :other_infos
  	add_column :locations, :city, :string
  	add_column :locations, :postal_code, :string
  	add_column :activities, :image_caption_activity, :string
  	add_column :activities, :image_caption_location, :string
  	add_column :activities, :image_caption_text, :string
  	add_column :activity_translations, :image_caption_activity, :string
  	add_column :activity_translations, :image_caption_location, :string
  	add_column :activity_translations, :image_caption_text, :string
  	create_table :about do |t|
      t.text  :content
    end
  end
end
