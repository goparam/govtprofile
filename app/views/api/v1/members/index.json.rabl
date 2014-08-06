object @updated 
node(:updated_at) { |u| u.updated_at.strftime("%Y-%m-%d %H:%M:%S") rescue ""}
			
			
			child @members  do
			
			attributes   :id, :is_deleted,  :email, :photo
						
			node(:phones){|members| JSON.parse(members.phones)rescue ""}
		
	    	child :profiles do
						 attributes :name, :designation, :dob,:current_workong_district, :current_working_location, :district, :current_post, :language, :year_of_joining,:last_name,:education, :father_name,
						:year_of_posting,:native_district,:native_location,
						:other_info,:batch
						
	
			end


end
end