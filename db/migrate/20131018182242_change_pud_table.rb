class ChangePudTable < ActiveRecord::Migration
  def change
  	drop_table :pub
  end
end
