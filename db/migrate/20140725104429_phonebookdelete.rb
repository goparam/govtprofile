class Phonebookdelete < ActiveRecord::Migration
  def up
  	remove_column :phonebookusers, :email
  	remove_column :phonebookusers, :encrypted_password
	   remove_column :phonebookusers, :role
	   remove_column :phonebookusers, :phone
	   remove_column :phonebookusers, :name
	   remove_column :phonebookusers, :mail
	
  end

  def down
  end
end
