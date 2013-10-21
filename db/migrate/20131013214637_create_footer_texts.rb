class CreateFooterTexts < ActiveRecord::Migration
  def change
    create_table :footer_texts do |t|

      t.timestamps
    end
  end
end
