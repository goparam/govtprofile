

 object @updated
node(:updated_at) { |u| u.updated_at.strftime("%Y-%m-%d %H:%M:%S") rescue ""}
	
		child @members do
			attributes   :id, :is_deleted,  :email, :photo 

			node(:phones){|member| JSON.parse(member.phones)rescue ""}
			node(:dob) {|member| member.dob.strftime("%d/%m/%Y") rescue ""}
			node(:curront_loction_joning_date) {|member| member.curront_loction_joning_date.strftime("%d/%m/%Y") rescue ""}
			node(:joning_date) {|member| member.joining_date.strftime("%d/%m/%Y") rescue ""}
			child :profiles do

						attributes :id,:name,				
						:designation, :current_workong_district, :native_location,:current_working_location, :district,  :city, :member_id, :language, :current_post
						node(:qualifications){|member| JSON.parse(member.qualifications)rescue ""}
						node (:last_name){|user| JSON.parse(users.last_name) rescue ""}
						node (:father_name){|user| JSON.parse(users.father_name) rescue ""}
					
						node (:native_district){|user| JSON.parse(users.native_district) rescue ""}
						node(:batch){|user| JSON.parse(users.batch) rescue ""}
						node(:other_info){|user| JSON.parse(users.other_info) rescue ""}




			end

end