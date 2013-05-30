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

require 'spec_helper'

describe Profile do
  pending "add some examples to (or delete) #{__FILE__}"
end
