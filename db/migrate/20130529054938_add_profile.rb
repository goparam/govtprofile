class AddProfile < ActiveRecord::Migration
   def change
    create_table :profiles do |t|
      t.string :name
      t.string :designation
      t.string :current_workong_district
      t.string :current_working_location
      t.string :district
      t.string :city
    	t.string :qualifications
      t.timestamps
    end
  end
end