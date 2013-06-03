class Api::V1::SearchByFieldsController <  Api::V1::ApiV1Controller
def index
		
		
		if params[:name].nil? && params[:email].nil?  && params[:phones].nil? && params[:diesignation].nil? && params[:current_working_location].nil?&& params[:current_workong_district].nil?
				
		else
				
				
				search = []
				search << "lower(members.email) like '%#{params[:email].downcase}%'" unless params[:email].nil? || params[:email].blank?
				search << "lower(members.phones) like '%#{params[:phones].downcase}%'" unless params[:phones].nil? || params[:phones].blank?
				search << "lower(profiles.diesignation) like '%#{params[:diesignation].downcase}%'" unless params[:diesignation].nil? || params[:diesignation].blank?
				search << "lower(profiles.current_working_location) like '%#{params[:current_working_location].downcase}%'" unless params[:current_working_location].nil? || params[:current_working_location].blank?
				search << "lower(profiles.current_workong_district) like '%#{params[:current_workong_district].downcase}%'" unless params[:current_workong_district].nil? || params[:current_workong_district].blank?
				search << "lower(profiles.name) like '%#{params[:name].downcase}%'" unless params[:name].nil? || params[:name].blank?
				
				@member = Member.joins(:profiles).where(search.join(" AND ").to_s).uniq
			
		end
					render "api/v1/search_by_fields/index"

	end
end
