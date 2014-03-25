class CreatePoliticalReviews < ActiveRecord::Migration
  def change
    create_table :political_reviews do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
