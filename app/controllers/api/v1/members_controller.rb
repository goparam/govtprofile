class Api::V1::MembersController <  Api::V1::ApiV1Controller

	def index

		
		if !params[:updated_at].blank? 
			
				@members = Member.includes(:profiles).where("members.updated_at > '#{params[:updated_at]}'").uniq.order("members.updated_at desc, profiles.language")
		else
				@members = Member.includes(:profiles).uniq.order("members.updated_at desc, profiles.language")

		end
	

			@updated=@members[0]
		render "api/v1/members/index"
	end
	
end
