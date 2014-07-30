class Dropattach < ActiveRecord::Migration
  def up
  	drop_attached_file :users, :photo
  end

  def down
  end
end
