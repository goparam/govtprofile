class CreatePhonebookusers < ActiveRecord::Migration
  def change
    create_table :phonebookusers do |t|

      t.timestamps
    end
  end
end
