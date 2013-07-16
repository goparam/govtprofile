# == Schema Information
#
# Table name: talukas
#
#  id          :integer          not null, primary key
#  district_id :integer
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Taluka < ActiveRecord::Base
  attr_accessible :district_id, :name
  belongs_to :district
end
