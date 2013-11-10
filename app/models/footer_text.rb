class FooterText < ActiveRecord::Base
  validates_presence_of :max_title, :max_subtitle, :max_text, :photograph_title, :photograph_subtitle, :photograph_text, :max_image, :photograph_image
	mount_uploader :max_image, ImageUploader
	mount_uploader :photograph_image, ImageUploader

	translates :max_title, :max_subtitle, :max_text, :photograph_title, :photograph_subtitle, :photograph_text, :fallbacks_for_empty_translations => true
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
