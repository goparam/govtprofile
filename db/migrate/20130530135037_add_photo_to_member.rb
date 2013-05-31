class AddPhotoToMember < ActiveRecord::Migration
  def self.up
    add_attachment :members, :photo
    
  end

  def self.down
    remove_attachment :members, :photo
   
  end
end