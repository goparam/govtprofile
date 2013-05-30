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
  has_many :profiles
end
