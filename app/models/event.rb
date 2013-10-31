class Event < ActiveRecord::Base
	translates :website, :federation, :federation_website, :interesting_stats, :history, :description, :name, :other_infos, :image , :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations

	mount_uploader :image, ImageUploader
	belongs_to :season
	belongs_to :location
	has_and_belongs_to_many :activities
  after_save :create_missing_translations
	
  scope :recent, -> {order("created_at desc").limit(5)}
  
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
