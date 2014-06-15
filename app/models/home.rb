class Home < ActiveRecord::Base

  has_attached_file :background_image

  has_attached_file :featured_image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100>",
    :thumb_featured => "640x>"
  }

	belongs_to :pub1, :class_name => "Pub"
	belongs_to :pub2, :class_name => "Pub"

	translates :title, :who_one_title, :who_one_text, :who_two_title, :who_two_text, :who_video_link, :featured_caption_place, :featured_caption_activity, :promotion_text, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations	

  after_save :create_missing_translations

  has_attached_file :slider1, :styles => { 
    :thumb_menu => "150x150>"
  }
  has_attached_file :slider2, :styles => { 
    :thumb_menu => "150x150>"
  }
  has_attached_file :slider3, :styles => { 
    :thumb_menu => "150x150>"
  }
  has_attached_file :slider4, :styles => { 
    :thumb_menu => "150x150>"
  }
  has_attached_file :slider5, :styles => { 
    :thumb_menu => "150x150>"
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
