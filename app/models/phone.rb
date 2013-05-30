# == Schema Information
#
# Table name: phones
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  member_id  :integer
#  phone_no   :string(255)
#  updated_at :datetime         not null
#

class Phone < ActiveRecord::Base
  attr_accessible :phone_no, :member_id
  belongs_to :member
end
