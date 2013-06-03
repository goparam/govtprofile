collection @member
	attributes :curront_loction_joning_date, :dob, :email, :joining_date, :photo, :phones
	child :profiles do
				attributes :id,:name, :designation, :current_workong_district, :current_working_location, :district,  :city, :member_id, :qualifications, :language
				
	end
