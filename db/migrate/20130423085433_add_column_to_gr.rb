class AddColumnToGr < ActiveRecord::Migration
  def change
    add_column :grs, :unique_code, :string, :unique => true
    add_column :grs, :gr_date, :date
    add_column :grs, :department_id, :integer

    add_index :grs, :unique_code, :unique => true    
  end
end
