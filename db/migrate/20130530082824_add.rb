class Add < ActiveRecord::Migration
  def change
   
      add_column :profiles, :language, :string
  end
end