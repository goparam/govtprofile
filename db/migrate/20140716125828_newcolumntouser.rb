class Newcolumntouser < ActiveRecord::Migration
  def up
  add_column :users, :photo, :string
  end

  def down
  	
  end
end
