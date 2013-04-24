class Api::V1::ApiV1Controller < ActionController::Base
	# before_filter :valid_token
	
	private 
		def valid_token
			if params[:auth_token].blank?
				render :json => {:status => "Error", :message => "Auth token should not be blank!" } and return
			else
				@user = User.find_by_authentication_token(params[:auth_token]) rescue nil
				if @user.nil?
					render :json => {:status => "Error", :message => "Auth token is not valid!" } and return
				end
			end
		end
end
