class CreateGrs < ActiveRecord::Migration
  def change
    create_table :grs do |t|
      t.integer :id
      t.string :name
      t.text :details

      t.timestamps
    end
  end
end
