class Api::V1::SearchByFieldsController <  Api::V1::ApiV1Controller
def index
		
		
		if params[:name].nil? && params[:birth_date].nil?  && params[:posting_date].nil? && params[:diesignation].nil? && params[:home_district].nil?
				
		else
				
				
				search = []
				search << "lower(profiles.diesignation) like '%#{params[:diesignation].downcase}%'" unless params[:diesignation].nil? || params[:diesignation].blank?
				search << "lower(profiles.district) like '%#{params[:home_district].downcase}%'" unless params[:home_district].nil? || params[:home_district].blank?
				search << "(members.curront_loction_joning_date == '#{Date.parse(params[:posting_date])}')" unless params[:posting_date].nil? || params[:posting_date].blank? 
				search << "(members.dob == '#{Date.parse(params[:birth_date])}')" unless params[:birth_date].nil? || params[:birth_date].blank? 
				
				search << "lower(profiles.name) like '%#{params[:name].downcase}%'" unless params[:name].nil? || params[:name].blank?
				
				@member = Member.joins(:profiles).where(search.join(" AND ").to_s).uniq
			
		end
					render "api/v1/search_by_fields/index"

	end
end
