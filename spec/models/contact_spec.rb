# == Schema Information
#
# Table name: contacts
#
#  created_at :datetime         not null
#  email      :string(255)
#  id         :integer          not null, primary key
#  message    :string(255)
#  name       :string(255)
#  subject    :string(255)
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Contact do
  pending "add some examples to (or delete) #{__FILE__}"
end
