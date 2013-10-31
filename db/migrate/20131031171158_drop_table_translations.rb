class DropTableTranslations < ActiveRecord::Migration
  def change
  	Season.drop_translation_table!
  	ActivityCategory.drop_translation_table!
  	AdministrativeRegion.drop_translation_table!
  end
end
