class ChangeTypeIdColumnName < ActiveRecord::Migration
  def change
  	rename_column :pubs, :type_id, :pub_type_id
  end
end
