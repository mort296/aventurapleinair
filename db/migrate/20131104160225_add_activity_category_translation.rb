class AddActivityCategoryTranslation < ActiveRecord::Migration
  def up
  	AdministrativeRegion.drop_translation_table!
  end
  def down
  	AdministrativeRegion.drop_translation_table!
  end
end
