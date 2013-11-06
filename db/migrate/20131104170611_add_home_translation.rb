class AddHomeTranslation < ActiveRecord::Migration
  def up
    Home.create_translation_table!(
      {:title => :string, :who_one_title => :string, :who_one_text => :text, :who_two_title => :string, :who_two_text => :text, :who_video_link => :string, :featured_caption_place => :string, :featured_caption_activity => :string, :promotion_text => :string},
      {:migrate_data => true}
    )
  end
 
  def down
    Home.drop_translation_table!
  end
end
