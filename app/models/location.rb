class Location < ActiveRecord::Base
	validates_presence_of :name, :administrative_region, :gps_longitude, :gps_latitude
	validates_presence_of :address, :services, :interesting_stats, :introduction, :phone, :image, :useful_infos, :if => :online?

	translates :name, :address, :website, :services, :interesting_stats, :prizes, :other_distinctions, :introduction, :other_infos, :fallbacks_for_empty_translations => true
	accepts_nested_attributes_for :translations

	require 'net/http'
	mount_uploader :image, PubUploader
	belongs_to :administrative_region
	has_and_belongs_to_many :useful_infos
	belongs_to :pub
	has_and_belongs_to_many :activities
	
	after_save :create_missing_translations
  
  def online?
    online == true
  end

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
