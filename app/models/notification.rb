# == Schema Information
#
# Table name: notifications
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  type        :string(255)
#

class Notification < ActiveRecord::Base
  attr_accessible :description, :title, :notificationType, :id
end
