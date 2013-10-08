class RemoveHeaderImageFromHomes < ActiveRecord::Migration
  def change
    remove_column :homes, :header_image, :string
  end
end
