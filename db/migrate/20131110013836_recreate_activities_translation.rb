class RecreateActivitiesTranslation < ActiveRecord::Migration
  def change
  	Activity.drop_translation_table!
  end
end
