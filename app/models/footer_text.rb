class FooterText < ActiveRecord::Base

  has_attached_file :background_image, :styles => {  
    :thumb_admin => "100x100>"
  }

  has_attached_file :background_summer_image, :styles => {  
    :thumb_admin => "100x100>"
  }

  has_attached_file :max_image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100>",
    :thumb => "200x200>"
  }

	translates :max_title, :max_subtitle, :max_text, :photograph_title, :photograph_subtitle, :photograph_text, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations	

  after_save :create_missing_translations
  
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
