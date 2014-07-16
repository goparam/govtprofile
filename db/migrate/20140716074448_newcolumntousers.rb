class Newcolumntousers < ActiveRecord::Migration
  def up
  	add_column :users, :native_location, :string
    add_column :users, :year_of_joining, :string
    add_column :users, :phone1, :string
    add_column :users, :phone2, :string
  end

  def down
  end
end
