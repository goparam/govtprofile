class Api::V1::MembersController <  Api::V1::ApiV1Controller

	def index
		
		if !params[:updated_at].blank?
			
			@members = Member.where("members.updated_at > '#{params[:updated_at]}'")
		else
			@members = Member.uniq.order("updated_at desc")
		end
			@updated=@members[0]
		render "api/v1/members/index"
	end
	
end
