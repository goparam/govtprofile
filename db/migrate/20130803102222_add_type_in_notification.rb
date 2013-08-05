class AddTypeInNotification < ActiveRecord::Migration
  def change
  	add_column :notifications, :notificationType, :string  
  end
end