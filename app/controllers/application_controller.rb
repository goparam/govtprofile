class ApplicationController < ActionController::Base
	protect_from_forgery
	before_filter :debug_params
	#approved
				#1=>admin   2=>approved 	0=>not_approved 	
	def authenticate_admin
		authenticate_user!
		unless current_user.approved == 1
			sign_out
			flash[:error] = "User is not admin! Try again using another username!"
			redirect_to new_user_session_path
			# redirect_to new_user_session_path
		end
	end
	def authenticate_approved
		authenticate_user!
		unless current_user.approved == 2 || current_user.approved == 1
			sign_out
			flash[:error] = "You have signed up successfully but your account has not been approved by your administrator yet"
			redirect_to new_user_session_path
			# redirect_to new_user_session_path
		end
	end

	def debug_params
		print "-----------------params = #{params.to_json}----------------"
	end

end
