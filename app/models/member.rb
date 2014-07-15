# == Schema Information
#
# Table name: members
#
#  id                          :integer          not null, primary key
#  dob                         :date
#  joining_date                :date
#  curront_loction_joning_date :date
#  email                       :string(255)
#  phones                      :string(255)
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  photo_file_name             :string(255)
#  photo_content_type          :string(255)
#  photo_file_size             :integer
#  photo_updated_at            :datetime
#  is_deleted                  :integer          default(0)
#

class Member < ActiveRecord::Base
  attr_accessible :curront_loction_joning_date, :dob, :email, :joining_date, :photo, :phones, :updated_at, :is_deleted
  has_attached_file :photo, 
   		:storage => :dropbox,
	    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
	    :styles => { :medium => "300x300>" }, 
	    :dropbox_options => {:path => proc { |style| "#{style}/#{id}_#{photo.original_filename}" }}


	

	validates :email,  :format => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i }
 	has_many :profiles
 has_one :user
end
