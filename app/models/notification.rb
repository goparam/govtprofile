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
  attr_accessible :description, :title, :notificationType, :id, :document
   has_attached_file :document,
	    :storage => :dropbox,
	    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
	    :styles => { :medium => "300x300" },
	    :dropbox_options => {:path => proc { |style| "#{style}/#{id}_#{document.original_filename}" }}

	validates_attachment_presence :document
	
end
