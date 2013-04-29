# == Schema Information
#
# Table name: grs
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

class Gr < ActiveRecord::Base
  	attr_accessible :details, :id, :name, :document, :gr_date, :department_id, :unique_code

  	# before_save :generate_unique_code

	has_attached_file :document, 
        :url => "/assets/admin/grs/document/:id/:style/:basename.:extension",
        :path => ":rails_root/public/assets/admin/grs/document/:id/:style/:basename.:extension"

	validates_attachment_presence :document
	
	has_one :department, :dependent => :destroy

	# def generate_unique_code
	# 	if self.unique_code.nil?
	# 		found = false
	# 		while not found
	# 			code = rand(36**10).to_s(8)
	# 			print "=============#{code}==========="
	# 			found = !Gr.exists?(:unique_code => code)
	# 		end
	# 		self.unique_code = code
	# 	end
	# end
end
