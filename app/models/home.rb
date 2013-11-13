class Home < ActiveRecord::Base

	mount_uploader :background_image, ImageUploader
	mount_uploader :featured_image, HomeUploader
	belongs_to :pub1, :class_name => "Pub"
	belongs_to :pub2, :class_name => "Pub"

	translates :title, :who_one_title, :who_one_text, :who_two_title, :who_two_text, :who_video_link, :featured_caption_place, :featured_caption_activity, :promotion_text, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations	

  after_save :create_missing_translations
  
	protected
 
  def create_missing_translations
    ADDITIONAL_LOCALES.each do |lang|
      t = translations.find_by_locale(lang[0].to_s)
      if t.nil?
        translations.create(:locale => lang[0].to_s)
      end
    end
  end
end
