class Addcolumntouser < ActiveRecord::Migration
  def up
  	add_column :users, :notification_id,:integer
  end

  def down
  	remove_column :users, :notification_id ,:integer
  end
end
