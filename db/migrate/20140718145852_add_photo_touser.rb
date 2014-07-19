class AddPhotoTouser < ActiveRecord::Migration
  def up
  	add_attachment :users, :photo
  end
  
end
