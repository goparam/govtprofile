class Api::V1::RegistarController <  ActionController::Base

	def create

		if params[:user][:email].blank? || params[:user][:password].blank?|| params[:user][:password_confirmation].blank?
			render :json => {:success => false, :message => "Missing parameters"}, :status => 400 and return
		end
		@user=User.new(params[:user])
		if @user.save 
			render :json => {:success => true}
		else
			
			render :json => {:success => "#{@user.errors.full_messages}!"}
		end

		 
	end

	

	
end
