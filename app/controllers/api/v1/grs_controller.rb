class Api::V1::GrsController <  Api::V1::ApiV1Controller

	def index
		if params[:find].nil?
			@grs = Gr.order("gr_date desc").paginate(:page => params[:page], :per_page => 10)
		else
			@grs = Gr.joins(:department).where("departments.name like '%#{params[:find]}%' OR grs.name like '%#{params[:find]}%'").uniq.order("gr_date desc").paginate(:page => params[:page], :per_page => 10)
		end
		render "api/v1/grs/index"
	end

end