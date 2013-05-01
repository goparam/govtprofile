# == Schema Information
#
# Table name: departments
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string(255)
#  updated_at :datetime         not null
#

class Department < ActiveRecord::Base
  	attr_accessible :id, :name
  
	# has_many :department_grs, :dependent => :destroy
	has_one :department_gr, :dependent => :destroy
  	has_one :gr, :through => :department_gr
end
