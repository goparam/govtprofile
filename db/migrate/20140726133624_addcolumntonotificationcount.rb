class Addcolumntonotificationcount < ActiveRecord::Migration
  def up
  	# add_column :notificationcounts, :user_id,:integer
  	# add_column :notificationcounts, :member_id,:integer
  	# add_column :notificationcounts, :last_notification_id,:integer
  	# add_column :notificationcounts, :total_read_notification,:integer

  end

  def down
  	# remove_column :notificationcounts, :user_id,:integer
  	# remove_column :notificationcounts, :member_id,:integer
  	# remove_column :notificationcounts, :last_notification_id,:integer
  	# remove_column :notificationcounts, :total_read_notification,:integer
  end
end
