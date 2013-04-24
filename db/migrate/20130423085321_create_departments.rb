class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.integer :id, :unique => true
      t.string :name

      t.timestamps
    end
    add_index :grs, :id, :unique => true
  end
end
