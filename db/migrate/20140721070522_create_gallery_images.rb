class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.string :caption
      t.string :image_details

      t.timestamps
    end
  end
end
