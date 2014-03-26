class Equipment < ActiveRecord::Base
	validates_presence_of :name, :description, :image
  
	translates :name, :description, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations

  has_attached_file :image, :styles => { 
    :thumb_menu => "150x150>", 
    :thumb_admin => "100x100>",
    :thumb => "300x>"
  }
  
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
