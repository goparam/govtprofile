class AddPostToProfile < ActiveRecord::Migration
   def change
   
      add_column :profiles, :current_post, :string
  end
end