class AddMailImeinoInUsers < ActiveRecord::Migration
   def change
  	add_column :users, :designation, :string
  	add_column :users, :posting_district, :string
  end
end
