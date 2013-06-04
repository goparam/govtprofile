# == Schema Information
#
# Table name: profiles
#
#  city                     :string(255)
#  created_at               :datetime         not null
#  current_working_location :string(255)
#  current_workong_district :string(255)
#  designation              :string(255)
#  district                 :string(255)
#  id                       :integer          not null, primary key
#  member_id                :integer
#  name                     :string(255)
#  qualifications           :string(255)
#  updated_at               :datetime         not null
#

class Profile < ActiveRecord::Base
	attr_accessible :name, :designation, :current_workong_district, :current_working_location, :district,  :city, :member_id, :qualifications, :language, :current_post
	belongs_to :member	
end
