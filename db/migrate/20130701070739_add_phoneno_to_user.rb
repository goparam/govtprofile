class AddPhonenoToUser < ActiveRecord::Migration
  def change
  	 add_column :users, :phone, :integer
  end
end
