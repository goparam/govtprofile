class Api::V1::DesignationsController < Api::V1::ApiV1Controller
	def index
		@profiles=Profile.find_all_by_language("E")

			@designations=@profiles.collect(& :designation)
			 respond_to do |format|
        
        format.json { render json: @designations }
      end
		
	end
	

end
