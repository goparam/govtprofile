class Api::V1::MembersController <  Api::V1::ApiV1Controller

	def index
		
		if !params[:updated_at].blank?
			
			@members = Member.find_by_sql("SELECT DISTINCT 'members'.* FROM 'members' INNER JOIN 'profiles' ON 'profiles'.'member_id' = 'members'.'id' WHERE (members.updated_at > '#{params[:updated_at]}' ) ORDER BY updated_at desc")
		else
			@members = Member.uniq.order("updated_at desc")
		end
			@updated=@members[0]
		render "api/v1/members/index"
	end
	
end
