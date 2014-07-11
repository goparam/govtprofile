# == Schema Information
#
# Table name: profiles
#
#  id                       :integer          not null, primary key
#  name                     :string(255)
#  designation              :string(255)
#  current_workong_district :string(255)
#  current_working_location :string(255)
#  district                 :string(255)
#  city                     :string(255)
#  qualifications           :string(255)
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  member_id                :integer
#  language                 :string(255)
#  current_post             :string(255)
#

class Profile < ActiveRecord::Base
	attr_accessible :name, :designation, :current_workong_district, :current_working_location, :district
	belongs_to :member	
end
