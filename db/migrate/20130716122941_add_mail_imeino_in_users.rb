class AddMailImeinoInUsers < ActiveRecord::Migration
   def change
  	add_column :users, :mail, :string
  	add_column :users, :imeino, :string
  end
end
