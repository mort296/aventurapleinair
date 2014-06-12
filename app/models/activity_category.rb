class ActivityCategory < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates_presence_of :name
  
	translates :name, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations	
  
	has_many :activity

  after_save :create_missing_translations

  has_attached_file :image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100#",
    :thumb_slider => "585x>",
    :top_ten_small => "300x>",
    :top_ten_big => "950x>"
  }
  
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
