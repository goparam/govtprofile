# == Schema Information
#
# Table name: members
#
#  created_at                  :datetime         not null
#  curront_loction_joning_date :date
#  dob                         :date
#  email                       :string(255)
#  id                          :integer          not null, primary key
#  joining_date                :date
#  phones                      :string(255)
#  photo                       :string(255)
#  updated_at                  :datetime         not null
#

class Member < ActiveRecord::Base
  attr_accessible :curront_loction_joning_date, :dob, :email, :joining_date, :photo, :phones
  has_attached_file :photo, 
   		:storage => :dropbox,
	    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
	    :styles => { :medium => "300x300>" }, 
	    :dropbox_options => {:path => proc { |style| "#{style}/#{id}_#{photo.original_filename}" }}


	

	validates :email,  :format => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i }
  has_many :profiles
end
