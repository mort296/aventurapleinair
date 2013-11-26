class ChangeBackgroundimageField < ActiveRecord::Migration
  def change
  	remove_column :homes, :background_image
  	add_column :footer_texts, :background_image, :string
  end
end
