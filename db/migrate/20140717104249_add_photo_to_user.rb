class AddPhotoToUser < ActiveRecord::Migration
  def self.up
  add_attachment :users, :photo
    
  end
end
