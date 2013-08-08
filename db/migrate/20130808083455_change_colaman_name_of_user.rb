class ChangeColamanNameOfUser < ActiveRecord::Migration
  def change
  
  	rename_column :users, :location_uoadation_time, :location_updation_time
  end
end
