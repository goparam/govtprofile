class AddIsDeleteToMembers < ActiveRecord::Migration
   def change
   
      add_column :members, :is_deleted, :boolean, :default => False
  end
end