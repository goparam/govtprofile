class GalleryImage < ActiveRecord::Base
	
  attr_accessible :caption, :image_details, :photo
  	has_attached_file :photo, 
   		:storage => :dropbox,
	    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
	    :styles => { :medium => "300x300>" }, 
	    :dropbox_options => {:path => proc { |style| "#{style}/#{id}_#{photo.original_filename}" }}


end
