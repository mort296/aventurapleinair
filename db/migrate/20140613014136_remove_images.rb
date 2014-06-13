class RemoveImages < ActiveRecord::Migration
  def change
  	remove_column :sliders, :slider2
    remove_column :sliders, :slider3
    remove_column :sliders, :slider4
    remove_column :sliders, :slider5
    remove_column :sliders, :slider6
    remove_column :sliders, :slider7
    remove_column :sliders, :slider8
    remove_column :sliders, :slider9
    remove_column :sliders, :slider10
  end
end
