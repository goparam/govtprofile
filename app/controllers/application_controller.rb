class ApplicationController < ActionController::Base
	protect_from_forgery
	before_filter :debug_params

	def authenticate_admin
		authenticate_user!
		unless current_user.email == "admin@definelabs.com"
			flash[:error] = "User is not admin! Try again using another username!"
			sign_out_and_redirect new_user_session_path
			# redirect_to new_user_session_path
		end
	end

	def debug_params
		print "-----------------params = #{params.to_json}----------------"
	end

end
