class CreateFooters < ActiveRecord::Migration
  def change
    create_table :footers do |t|
      t.string :max_title
      t.string :max_subtitle
      t.text :max_text
      t.string :max_image
      t.string :photograph_title
      t.string :photograph_subtitle
      t.text :photograh_text
      t.string :photograph_image

      t.timestamps
    end
  end
end
