class CreateTalukas < ActiveRecord::Migration
  def change
    create_table :talukas do |t|
      t.integer :district_id
      t.string :name

      t.timestamps
    end
  end
end
