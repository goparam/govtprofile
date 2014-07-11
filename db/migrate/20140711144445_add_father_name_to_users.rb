class AddFatherNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :father_name, :string
  end
end
