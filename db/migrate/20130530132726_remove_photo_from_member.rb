class RemovePhotoFromMember < ActiveRecord::Migration
   def change
   
      
      remove_column :profiles, :photo
  end
end