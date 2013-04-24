# == Schema Information
#
# Table name: blogs
#
#  created_at :datetime         not null
#  desc       :text
#  id         :integer          not null, primary key
#  preview    :string(255)
#  title      :string(255)
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Blog do
  pending "add some examples to (or delete) #{__FILE__}"
end
