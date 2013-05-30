class AddPhotoToMember < ActiveRecord::Migration
  def self.up
    add_attachment :members, :photo
    remove_column :users, :photo
  end

  def self.down
    remove_attachment :members, :photo
    remove_column :users, :photo
  end
end