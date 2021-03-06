class Season < ActiveRecord::Base
  validates_presence_of :name
  
	translates :name, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations	

  after_save :create_missing_translations

  has_and_belongs_to_many :activities
  has_and_belongs_to_many :events
  
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
