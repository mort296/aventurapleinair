class Location < ActiveRecord::Base
  acts_as_commentable
	validates_presence_of :name
	validates_presence_of :address, :phone, :administrative_region, :gps_longitude, :gps_latitude, :image, :useful_infos, :city, :postal_code, :if => :online?

	translates :name, :address, :description, :website, :link_text, :fallbacks_for_empty_translations => true
	accepts_nested_attributes_for :translations

	require 'net/http'

	has_attached_file :image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100>",
    :full_width => "950x>",
    :top_ten_small => "300x>",
    :top_ten_big => "950x>"
  }

	belongs_to :administrative_region
	has_and_belongs_to_many :useful_infos
	belongs_to :pub
	has_and_belongs_to_many :activities
  has_one :location_rating
	
	after_save :create_missing_translations
  
  def online?
    online == true
  end

  def getCurrentRate rating
    return LocationRating.new().currentRate(rating)
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
