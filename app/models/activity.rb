class Activity < ActiveRecord::Base
	translates :name, :federation, :website, :interesting_stats, :history, :particularity, :description, :other_infos, :learn, :equipment, :video_link, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations

	mount_uploader :image, ImageUploader
	belongs_to :season
	belongs_to :activity_category
	has_and_belongs_to_many :events
	has_and_belongs_to_many :locations

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
