class CreateLocationTranslations < ActiveRecord::Migration
  def up
  	Location.create_translation_table!(
      {:name => :string, :address => :string, :website => :string, :services => :text, :interesting_stats => :text, :prizes => :text, :other_distinctions => :text, :introduction => :text, :other_infos => :text, :image => :string },
      {:migrate_data => true}
    )
  end
 
  def down
    Location.drop_translation_table!
  end
end
