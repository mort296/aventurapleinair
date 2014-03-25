class PoliticalTranslation < ActiveRecord::Migration
  def up
    PoliticalReview.create_translation_table!(
      {:title => :string, :text => :text},
      {:migrate_data => true}
    )
  end
 
  def down
    PoliticalReview.drop_translation_table!
  end
end
