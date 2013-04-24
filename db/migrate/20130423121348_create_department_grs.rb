class CreateDepartmentGrs < ActiveRecord::Migration
  def change
    create_table :department_grs do |t|
      t.integer :id
      t.integer :department_id
      t.integer :gr_id

      t.timestamps
    end
  end
end
