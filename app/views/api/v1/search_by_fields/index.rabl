collection @member
	attributes   :email, :photo, :phones, :current_post
	
	node(:dob) {|member| member.dob.strftime("%d/%m/%Y") rescue ""}
	node(:curront_loction_joning_date) {|member| member.curront_loction_joning_date.strftime("%d/%m/%Y") rescue ""}
	node(:joning_date) {|member| member.joning_date.strftime("%d/%m/%Y") rescue ""}
	child :profiles do
				attributes :id,:name, :designation, :current_workong_district, :current_working_location, :district,  :city, :member_id, :qualifications, :language
				
	end
