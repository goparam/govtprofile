# == Schema Information
#
# Table name: infos
#
#  created_at            :datetime         not null
#  department_id         :integer
#  details               :text
#  document_content_type :string(255)
#  document_file_name    :string(255)
#  document_file_size    :integer
#  document_updated_at   :datetime
#  gr_date               :date
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  unique_code           :string(255)
#  updated_at            :datetime         not null
#

require 'spec_helper'

describe Info do
  pending "add some examples to (or delete) #{__FILE__}"
end
