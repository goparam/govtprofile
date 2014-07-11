class AddNativeDistrictAndPostingLocationAndBatchAndYearOfPostingAndPersentPostAndOtherInfoAndEducationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :native_district, :string
    add_column :users, :posting_location, :string
    add_column :users, :batch, :date
    add_column :users, :year_of_posting, :string
    add_column :users, :persent_post, :string
    add_column :users, :other_info, :string
    add_column :users, :education, :string
  end
end
