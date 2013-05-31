class Api::V1::MembersController <  Api::V1::ApiV1Controller

	def index
		@member = Member.all
		render "api/v1/members/index"
	end
end
