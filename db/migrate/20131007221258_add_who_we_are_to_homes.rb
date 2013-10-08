class AddWhoWeAreToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :who_one_title, :string
    add_column :homes, :who_one_text, :text
    add_column :homes, :who_two_title, :string
    add_column :homes, :who_two_text, :text
    add_column :homes, :who_video_link, :string
    add_column :homes, :featured_image, :string
    add_column :homes, :featured_caption_place, :string
    add_column :homes, :featured_caption_activity, :string
    add_column :homes, :promotion_text, :string
    add_column :homes, :pub_one_id, :string
    add_column :homes, :pub_two_id, :string
  end
end
