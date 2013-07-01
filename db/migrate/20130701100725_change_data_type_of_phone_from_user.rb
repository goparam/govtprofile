class ChangeDataTypeOfPhoneFromUser < ActiveRecord::Migration
  def self.up
   change_column :users, :phone, :double
  end

  def self.down
   change_column :users, :phone, :string
  end
end
