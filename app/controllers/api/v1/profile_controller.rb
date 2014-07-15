class Api::V1::ProfileController <  Api::V1::ApiV1Controller

	def index

		
		if !params[:id].blank? 
			
				render :json => {:success => false, :message => "User does not found"} and return
		else
				@member = Member.includes(:profiles).uniq.order("id)

		end
	

			
		
	end
	
end
