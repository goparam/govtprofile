# == Schema Information
#
# Table name: updates
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Update < ActiveRecord::Base
    attr_accessible :updated_at, :id
# attr_accessible :title, :body
end
