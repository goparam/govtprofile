class To < ActiveRecord::Migration
  def up
  	# add_column :profiles, :last_name, :string
   #  add_column :profiles, :father_name, :string
   #  add_column :profiles, :year_of_joining, :string
   #  add_column :profiles, :phone, :string
   #  add_column :profiles, :phone2, :string
   #  add_column :profiles, :year_of_posting, :string
   #  add_column :profiles, :native_district, :string
   #  add_column :profiles, :native_location, :string
   #  add_column :profiles, :other_info, :string
   #  add_column :profiles, :batch, :date
   #  add_column :profiles, :imeino, :string
   #  add_column :profiles, :education, :string

  end

  def down
    remove_column :profiles, :last_name, :string
    remove_column :profiles, :father_name, :string
    remove_column :profiles, :year_of_joining, :string
    remove_column :profiles, :phone, :string
    remove_column :profiles, :phone2, :string
    remove_column :profiles, :year_of_posting, :string
    remove_column :profiles, :native_district, :string
    remove_column :profiles, :native_location, :string
    remove_column :profiles, :other_info, :string
    remove_column :profiles, :batch, :date
    remove_column :profiles, :imeino, :string
    remove_column :profiles, :education, :string

  end
end
