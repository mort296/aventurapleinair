class TopLocation < ActiveRecord::Base
	translates :text_top, :text_bottom, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations	

  after_save :create_missing_translations

  belongs_to :pub
  
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
