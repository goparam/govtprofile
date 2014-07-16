class Fixpersentpost < ActiveRecord::Migration
  def up
  	rename_column :users, :persent_post, :present_post
  end

end
