class Api::V1::GrsController <  Api::V1::ApiV1Controller

	def index
		@grs = Gr.order(:gr_date).all
		render "api/v1/grs/index"
	end

end
