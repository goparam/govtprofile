class Adddocumenttonotification < ActiveRecord::Migration
 def self.up
    add_attachment :notifications, :document
    
  end

  def self.down
    remove_attachment :notifications, :document
   
  end
end
