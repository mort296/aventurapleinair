class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :header_image
      t.string :background_image
      t.string :about_us

      t.timestamps
    end
  end
end
