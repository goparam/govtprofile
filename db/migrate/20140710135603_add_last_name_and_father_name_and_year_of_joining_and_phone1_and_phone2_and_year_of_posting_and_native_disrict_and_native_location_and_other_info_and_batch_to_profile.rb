class AddLastNameAndFatherNameAndYearOfJoiningAndPhone1AndPhone2AndYearOfPostingAndNativeDisrictAndNativeLocationAndOtherInfoAndBatchToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :last_name, :string
    add_column :profiles, :father_name, :string
    add_column :profiles, :year_of_joining, :date
    add_column :profiles, :phone1, :string
    add_column :profiles, :phone2, :string
    add_column :profiles, :year_of_posting, :date
    add_column :profiles, :native_district, :string
    add_column :profiles, :native_location, :string
    add_column :profiles, :other_info, :string
    add_column :profiles, :batch, :date
  end
end
