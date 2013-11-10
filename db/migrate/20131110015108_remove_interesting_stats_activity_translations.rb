class RemoveInterestingStatsActivityTranslations < ActiveRecord::Migration
  def change
  	remove_column :activity_translations, :interesting_stats
  end
end
