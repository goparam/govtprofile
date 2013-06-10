class AddIsDeleteToMembers < ActiveRecord::Migration
   def change
   
      add_column :members, :is_deleted, :integer, :default => 0
  end
end