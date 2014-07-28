class Adddobtouser < ActiveRecord::Migration
  def up
  		add_column :users, :dob,:date
  end

  def down
  end
end
