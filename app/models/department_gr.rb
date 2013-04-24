# == Schema Information
#
# Table name: department_grs
#
#  created_at    :datetime         not null
#  department_id :integer
#  gr_id         :integer
#  id            :integer          not null, primary key
#  updated_at    :datetime         not null
#

class DepartmentGr < ActiveRecord::Base
  attr_accessible :department_id, :gr_id, :id

  belongs_to :department
  belongs_to :gr
end
