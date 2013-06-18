class Taluka < ActiveRecord::Base
  attr_accessible :district_id, :name
  belongs_to :district
end
