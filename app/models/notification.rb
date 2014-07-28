# == Schema Information
#
# Table name: notifications
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  type        :string(255)
#

class Notification < ActiveRecord::Base
  attr_accessible :description, :title, :notificationType, :id, :document,:istextonly
   has_attached_file :document,
	    :storage => :dropbox,
	    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
	    # :styles => { :medium => "300x300" },
	    :dropbox_options => {:path => proc { |style| "#{style}/#{id}_#{document.original_filename}" }},
	    :content_type => ["application/pdf","application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
             "application/msword", 
             "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 
             "text/plain"]
	
end
