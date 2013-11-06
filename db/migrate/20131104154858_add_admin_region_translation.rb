class AddAdminRegionTranslation < ActiveRecord::Migration
  def up
    AdministrativeRegion.create_translation_table!(
      {:name => :string},
      {:migrate_data => true}
    )
  end
 
  def down
    AdministrativeRegion.drop_translation_table!
  end
end
