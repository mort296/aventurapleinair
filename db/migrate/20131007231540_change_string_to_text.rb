class ChangeStringToText < ActiveRecord::Migration
  def change
  	change_column :activities, :interesting_stats, :text
  	change_column :activities, :history, :text
  	change_column :activities, :particularity, :text
  	change_column :activities, :description, :text
  	change_column :activities, :other_infos, :text
  	change_column :activities, :learn, :text
  	change_column :activities, :equipment, :text

  	change_column :events, :interesting_stats, :text
  	change_column :events, :history, :text
  	change_column :events, :description, :text

	change_table :events do |t|
	  t.remove :other_info
	  t.text :other_infos
	end

	change_column :locations, :services, :text
	change_column :locations, :interesting_stats, :text
	change_column :locations, :prizes, :text
	change_column :locations, :other_distinctions, :text

	change_table :locations do |t|
    t.remove :intoduction
    t.text :introduction
	  t.remove :other_info
	  t.text :other_infos
	end

	change_column :top_10, :text_top, :text
	change_column :top_10, :text_bottom, :text
  end
end
