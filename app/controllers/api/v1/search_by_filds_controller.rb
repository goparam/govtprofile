class Api::V1::SearchByFildsController < Api::V1::ApiV1Controller
	def index
		@members = Member.all
		@member=@members
		if params[:name].nil? && params[:email].nil? && params[:diesignation].nil? && params[:phone].nil? && params[:current_working_location].nil?&& params[:current_workong_district].nil?
				@member=@members
		else
				
				@member<<"lower(@member.profiles.name) like '%#{params[:name].downcase}%'"
		end
					render "api/v1/search_by_filds/index"

	end
end
