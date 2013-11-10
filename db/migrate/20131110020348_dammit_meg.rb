class DammitMeg < ActiveRecord::Migration
  def up
  	Activity.drop_translation_table!
  end
  def down
  	Activity.drop_translation_table!
  end
end
