class AddLastNameMemberIdInUser < ActiveRecord::Migration
 def change
  	add_column :users, :member_id,  :integer #you can change the name, see wiki
	add_column :users, :last_name, :string #you can change the name, see wiki
  end
end