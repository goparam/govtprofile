class Api::V1::GrsController <  Api::V1::ApiV1Controller

	def index
		begin
			if params[:title].nil? && params[:name].nil? && params[:to].nil? && params[:from].nil? && params[:unique_code].nil?
				@grs = Gr.order("gr_date desc").paginate(:page => params[:page], :per_page => 10)
			else
				search = []
				search << "lower(grs.name) like '%#{params[:title].downcase}%'" unless params[:title].nil? || params[:title].blank?
				search << "(grs.gr_date >= '#{params[:from]}' AND grs.gr_date <= '#{params[:to]}')" unless params[:from].nil? || params[:to].nil? || params[:from].blank? || params[:to].blank?
				search << "grs.unique_code like '%#{params[:unique_code]}%'" unless params[:unique_code].nil? || params[:unique_code].blank?
				search << "lower(departments.name) = '#{params[:name].downcase}'" unless params[:name].nil? || params[:name].blank?
				@grs = Gr.joins(:department).where(search.join(" AND ").to_s).uniq.order("grs.gr_date desc").paginate(:page => params[:page], :per_page => 10)
			end
			render "api/v1/grs/index"
		rescue
			render :json => {"status" => false, "message" => "Something went wrong. Please try again!"}
		end 
	end

end