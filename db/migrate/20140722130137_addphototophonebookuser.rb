class Addphototophonebookuser < ActiveRecord::Migration
 def self.up
    add_attachment :phonebookusers, :photo
    
  end

  def self.down
    remove_attachment :phonebookusers, :photo
   
  end
end
