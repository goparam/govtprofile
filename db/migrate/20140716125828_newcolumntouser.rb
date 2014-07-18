class Newcolumntouser < ActiveRecord::Migration
  def change
    remove_column :users, :photo
  end

  def down
  	
  end
end
