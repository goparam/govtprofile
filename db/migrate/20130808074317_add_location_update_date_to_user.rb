class AddLocationUpdateDateToUser < ActiveRecord::Migration
   def change
  	add_column :users, :location_uoadation_time, :datetime  
  end
end