class AddPhotoToUser < ActiveRecord::Migration
  def self.up
  remove_attachment :users, :photo
    
  end
end
