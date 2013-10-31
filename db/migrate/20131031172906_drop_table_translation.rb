class DropTableTranslation < ActiveRecord::Migration
  def change
  	ActivityCategory.drop_translation_table!
  end
end
