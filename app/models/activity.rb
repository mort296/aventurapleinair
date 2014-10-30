class Activity < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  acts_as_commentable
  validates_presence_of :name
  validates_presence_of :description, :season, :activity_category, :locations, :if => :online?
  
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


  attr_writer :remove_first_image
  attr_writer :remove_second_image
  attr_writer :remove_third_image
  attr_writer :remove_fourth_image
  attr_writer :remove_fifth_image
  attr_writer :remove_icon_list

  def remove_first_image
    @remove_first_image || false
  end

  def remove_second_image
    @remove_second_image || false
  end

  def remove_third_image
    @remove_third_image || false
  end

  def remove_fourth_image
    @remove_fourth_image || false
  end

  def remove_fifth_image
    @remove_fifth_image || false
  end

  def remove_icon_list
    @remove_icon_list || false
  end

  before_validation { self.image.clear if self.remove_first_image == '1' }
  before_validation { self.second_image.clear if self.remove_second_image == '1' }
  before_validation { self.third_image.clear if self.remove_third_image == '1' }
  before_validation { self.fourth_image.clear if self.remove_fourth_image == '1' }
  before_validation { self.fifth_image.clear if self.remove_fifth_image == '1' }
  before_validation { self.icon_list.clear if self.remove_icon_list == '1' }
  
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
