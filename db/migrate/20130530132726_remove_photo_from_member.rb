class RemovePhotoFromMember < ActiveRecord::Migration
   def change      
      remove_column :members, :photo
  end
end