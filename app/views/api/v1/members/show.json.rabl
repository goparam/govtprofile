
@@member
		attributes   :id,  :email, :photo,
			node(:phones){|member| JSON.parse(member.phones)rescue ""}
			node(:dob) {|member| member.dob.strftime("%d/%m/%Y") rescue ""}
			node(:curront_loction_joning_date) {|member| member.curront_loction_joning_date.strftime("%d/%m/%Y") rescue ""}
			node(:joning_date) {|member| member.joining_date.strftime("%d/%m/%Y") rescue ""}

end