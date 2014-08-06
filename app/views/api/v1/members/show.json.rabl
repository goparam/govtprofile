collection @users, :root => "members", :object_root => "profile"		
					attributes :id,:name,:last_name,:father_name, :dob,:phone, :imeino, :designation, :year_of_joining, :education, :year_of_posting, :native_district,  :native_location,:email, :other_info, :batch, :approved, :image, :icard
									
					node(:current_post) { |users| users.present_post } 
					node(:current_workong_district) { |users| users.posting_district }
					
					node(:current_working_location) { |users| users.posting_location } 
					node(:district) { |users| users.native_district } 
