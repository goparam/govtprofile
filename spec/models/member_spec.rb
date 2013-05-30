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

require 'spec_helper'

describe Member do
  pending "add some examples to (or delete) #{__FILE__}"
end
