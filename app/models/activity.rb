class Activity < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  acts_as_commentable
  validates_presence_of :name
  validates_presence_of :description, :season, :activity_category, :locations, :image, :if => :online?
  
	translates :name, :federation, :description, :useful_links, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations

  has_attached_file :icon_list, :styles => { 
    :thumb => "100x100#"
  }

  has_attached_file :image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100#",
    :thumb_slider => "585x>",
    :top_ten_small => "300x>",
    :top_ten_big => "950x>"
  }

  has_attached_file :second_image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100#",
    :thumb_slider => "585x>",
    :top_ten_small => "300x>",
    :top_ten_big => "950x>"
  }

  has_attached_file :third_image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100#",
    :thumb_slider => "585x>",
    :top_ten_small => "300x>",
    :top_ten_big => "950x>"
  }

  has_attached_file :fourth_image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100#",
    :thumb_slider => "585x>",
    :top_ten_small => "300x>",
    :top_ten_big => "950x>"
  }

  has_attached_file :fifth_image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100#",
    :thumb_slider => "585x>",
    :top_ten_small => "300x>",
    :top_ten_big => "950x>"
  }

	has_and_belongs_to_many :season
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
