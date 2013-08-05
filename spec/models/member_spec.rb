# == Schema Information
#
# Table name: members
#
#  id                          :integer          not null, primary key
#  dob                         :date
#  joining_date                :date
#  curront_loction_joning_date :date
#  email                       :string(255)
#  phones                      :string(255)
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  photo_file_name             :string(255)
#  photo_content_type          :string(255)
#  photo_file_size             :integer
#  photo_updated_at            :datetime
#  is_deleted                  :integer          default(0)
#

require 'spec_helper'

describe Member do
  pending "add some examples to (or delete) #{__FILE__}"
end
