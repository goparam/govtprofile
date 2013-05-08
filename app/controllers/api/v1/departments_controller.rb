class Api::V1::DepartmentsController <  Api::V1::ApiV1Controller

	def index
		@depts = Department.all
		render "api/v1/departments/index"
	end
end
