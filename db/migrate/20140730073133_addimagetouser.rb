class Addimagetouser < ActiveRecord::Migration
  def up
  	add_attachment :users, :image
  end

  def down
  end
end
