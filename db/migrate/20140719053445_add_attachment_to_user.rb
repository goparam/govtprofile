class AddAttachmentToUser < ActiveRecord::Migration
  def change
  	add_attachment :users, :photo
  end
end
