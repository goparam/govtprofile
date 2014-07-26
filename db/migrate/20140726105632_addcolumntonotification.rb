class Addcolumntonotification < ActiveRecord::Migration
  def up
  	add_column :notifications, :istextonly ,:string
  	end

  def down
  	remove_column :notifications, :istextonly, :string
  end
end
