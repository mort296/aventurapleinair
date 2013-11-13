class Event < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :interesting_stats, :description, :date_start, :season, :location, :image, :if => :online?

  validate :validate_end_date_before_start_date
  
	translates :federation, :interesting_stats, :description, :name, :other_infos, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :translations

	#mount_uploader :image, ImageUploader
	belongs_to :season
	belongs_to :location
	has_and_belongs_to_many :activities
  after_save :create_missing_translations
	
  scope :recent, -> {order("created_at desc").limit(5)}

  def online?
    online == true
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
