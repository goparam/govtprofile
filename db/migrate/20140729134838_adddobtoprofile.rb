class Adddobtoprofile < ActiveRecord::Migration
  def up
  	add_column :profiles, :dob,:date
  end

  def down
  end
end
