class Activity < ActiveRecord::Base
  acts_as_commentable
  validates_presence_of :name
  validates_presence_of :description, :particularity, :learn, :equipment, :season, :activity_category, :locations, :image, :if => :online?
  
	translates :name, :federation, :particularity, :description, :other_infos, :learn, :equipment, :useful_links, :image_caption_activity, :image_caption_location, :image_caption_text, :video_link, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations

  has_attached_file :image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100>",
    :thumb_slider => "585x>",
    :top_ten_small => "300x>",
    :top_ten_big => "950x>"
  }

	belongs_to :season
	belongs_to :activity_category
  belongs_to :pub
	has_and_belongs_to_many :events
	has_and_belongs_to_many :locations
  has_one :activity_rating

  after_save :create_missing_translations
  
  def online?
    online == true
  end

  def getCurrentRate rating
    return ActivityRating.new().currentRate(rating)
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
