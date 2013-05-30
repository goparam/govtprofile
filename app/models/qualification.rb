# == Schema Information
#
# Table name: qualifications
#
#  created_at    :datetime         not null
#  id            :integer          not null, primary key
#  member_id     :integer
#  qualification :string(255)
#  updated_at    :datetime         not null
#

class Qualification < ActiveRecord::Base
  attr_accessible :qualification, :member_id
    belongs_to :member
end
