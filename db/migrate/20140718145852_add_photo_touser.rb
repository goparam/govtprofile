class AddPhotoTouser < ActiveRecord::Migration
  def up
  	remove_attachment :users, :photo
  end
  
end
