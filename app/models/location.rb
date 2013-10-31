class Location < ActiveRecord::Base
	translates :name, :address, :website, :services, :interesting_stats, :prizes, :other_distinctions, :introduction, :other_infos, :image, :fallbacks_for_empty_translations => true
	accepts_nested_attributes_for :translations
	
	require 'net/http'
	mount_uploader :image, ImageUploader
	belongs_to :administrative_region
	belongs_to :useful_informations
	belongs_to :pub
	has_and_belongs_to_many :activities
	after_save :create_missing_translations

	lon = 1
	lat = 1
	@weather = Net::HTTP.get(URI.parse("http://openweathermap.org/data/2.1/find/city?lat=#{lat}&lon=#{lon}&cnt=1"))

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
