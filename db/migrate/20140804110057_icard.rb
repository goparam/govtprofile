class Icard < ActiveRecord::Migration
  def up
  	add_attachment :users, :icard
  end

  def down
  end
end
