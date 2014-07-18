class Removecolumnfromuserphoto < ActiveRecord::Migration
  def up
  	remove_column :users, :photo
  end

end
