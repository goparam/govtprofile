class AddMember < ActiveRecord::Migration
   def change
    create_table :members do |t|
      t.date :dob
      t.string :photo
      t.date :joining_date
      t.date :curront_loction_joning_date
      t.string :email
      t.string :phones
      t.timestamps
    end
  end
end
