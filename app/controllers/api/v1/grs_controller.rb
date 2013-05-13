class Api::V1::GrsController <  Api::V1::ApiV1Controller

	def index
		if params[:title].nil? && params[:name].nil? && params[:to].nil? && params[:from].nil? && params[:unique_code].nil?
			@grs = Gr.order("gr_date desc").paginate(:page => params[:page], :per_page => 10)
		else
			search = []
			search << "lower(grs.name) like '%#{URI.unescape(params[:title]).downcase}%'" if params[:title]
			search << "(grs.gr_date >= '#{Date.parse(URI.unescape(params[:from]))}' AND grs.gr_date <= '#{Date.parse(URI.unescape(params[:to])}')" if params[:from] && params[:to]
			search << "grs.unique_code like '%#{URI.unescape(params[:unique_code])}%'" if params[:unique_code]
			search << "lower(departments.name) = '#{URI.unescape(params[:name]).downcase}'" if params[:name]
			@grs = Gr.joins(:department).where(search.join(" OR ").to_s).uniq.order("grs.gr_date desc").paginate(:page => params[:page], :per_page => 10)
		end
		render "api/v1/grs/index"
	end

end