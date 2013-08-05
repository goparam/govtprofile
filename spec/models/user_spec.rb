# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  role                   :string(255)      default("User")
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  approved               :integer          default(0), not null
#  authentication_token   :string(255)
#  phone                  :string(255)
#  name                   :string(255)
#  mail                   :string(255)
#  imeino                 :string(255)
#  designation            :string(255)
#  posting_district       :string(255)
#  latitude               :float
#  longitude              :float
#  gmaps                  :boolean
#  member_id              :integer
#  last_name              :string(255)
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
