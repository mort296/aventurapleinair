class Activity < ActiveRecord::Base
  validates_presence_of :name, :season, :activity_category, :locations, :events
  
	translates :name, :federation, :particularity, :description, :other_infos, :learn, :equipment, :useful_links, :video_link, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations

	mount_uploader :image, ActivityUploader
	belongs_to :season
	belongs_to :activity_category
  belongs_to :pub
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
