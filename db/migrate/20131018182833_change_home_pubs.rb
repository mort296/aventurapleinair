class ChangeHomePubs < ActiveRecord::Migration
  def change
  	execute 'ALTER TABLE homes ALTER COLUMN pub_one_id TYPE integer USING (pub_one_id::integer)'
  	execute 'ALTER TABLE homes ALTER COLUMN pub_two_id TYPE integer USING (pub_two_id::integer)'
  end
end
