class AddLastNameAndFatherNameAndYearOfJoiningAndPhone1AndPhone2AndYearOfPostingAndNativeDisrictAndNativeLocationAndOtherInfoAndBatchToProfile < ActiveRecord::Migration
 
 def up
    remove_column :profiles, :last_name, :string
    remove_column :profiles, :father_name, :string
     remove_column :profiles, :year_of_joining, :date
      remove_column :profiles, :phone1, :string
    remove_column :profiles, :phone2, :string
   remove_column :profiles, :year_of_posting, :date
    remove_column :profiles, :native_district, :string
    remove_column :profiles, :native_location, :string
    remove_column :profiles, :other_info, :string
   remove_column :profiles, :batch, :date
  end

end