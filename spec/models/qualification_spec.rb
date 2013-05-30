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

require 'spec_helper'

describe Qualification do
  pending "add some examples to (or delete) #{__FILE__}"
end
