class Event < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  acts_as_commentable
  validates_presence_of :name
  validates_presence_of :description, :date_start, :season, :location, :image, :if => :online?

  validate :validate_end_date_before_start_date
  
	translates :federation, :description, :name, :other_infos, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations


  has_attached_file :image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100#",
    :thumb => "200x200>",
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
	belongs_to :location
	has_and_belongs_to_many :activities
  has_one :event_rating

  after_save :create_missing_translations

  

  def online?
    online == true
  end

  def getCurrentRate rating
    return EventRating.new().currentRate(rating)
  end
  
  def validate_end_date_before_start_date
    if date_end && date_start
      errors.add(:date_end, "La date de fin ne peut être inférieur à la date de début.") if date_end < date_start
    end
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
