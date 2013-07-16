class Api::V1::UsersController < ApplicationController
	def destroy
		user=user.find(params[:id])
		if user.destroy
			 flash[:success] = "#{user.phone} is successfully Deleted!"

		else
			 flash[:error] = "#{user.errors.full_messages}!"
		end
		redirect_to "/admin/users"	
	end

	def login
		print "----------------------params = #{params}------------------------"

		if params[:phone].blank? || params[:password].blank?|| params[:imeino].blank?
			render :json => {:success => false, :message => "Missing parameters"}, :status => 400 and return
		end
			user = User.find_for_database_authentication(:phone => params[:phone])
		
		if !user
			render :json => {:success => false, :message => "Invalid Phone no or Password"}and return 
		end

		if user.valid_password?(params[:password]) &&  user.imeino == params[:imeino]
			if user.approved==1 || user.approved==2
				user.reset_authentication_token! 
				render :json => {:success => true, :auth_token => user.authentication_token} and return
			else
				render :json => {:success => false, :message => "You have signed up successfully but your account has not been approved by your administrator yet "}and return
			end
		else 
			render :json => {:success => false, :message => "Invalid Phone no or Password or imei no"}and return
		end
	end
	def register
		print "----------------------params = #{params}------------------------"
		if params[:user].blank?
			render :json => {:success => false, :message => "User is empty"} and return
		end
		if params[:user][:phone].blank? || params[:user][:password].blank?|| params[:user][:imeino].nil?||params[:user][:imeino].blank?
			render :json => {:success => false, :message => "Missing parameters"} and return
		end
		 if params[:user][:password].length < 8
        
        	render :json => {:success => false, :message => "Password length must be at list 8 char"} and return
        end

		@user=User.new(params[:user])
		@user.mail=params[:user][:email]
		@user.email="#{params[:user][:phone]}@gmail.com"
		if @user.save 
			
			render :json => {:success => true, :message => "Successfully registered!"}
		else
			
			render :json => {:success => false, :message =>"#{@user.errors.full_messages.join(', ')}!"}
		end
		
	end

	def logout
		user = User.find_by_authentication_token(params[:auth_token])

		if user.nil?
			render :json => {:success => false, :message => "Invalid token!"} and return
		else
			user.reset_authentication_token!
			render :json => {:success => true, :message => "Successfully signout!"} and return
		end
	end

	def resetpassword
		print "----------------------params = #{params}------------------------"
		if params[:phone].blank? || params[:password].blank? || params[:new_password].blank?  || params[:imeino].blank? 
			render :json => {:success => false, :message => "All fild mandatory "} and return
		end
		
		user = User.find_for_database_authentication(:phone => params[:phone])
		
		if !user
			render :json => {:success => false, :message => "Invalid Phone no or Password"}and return 
		end
		
		
		if user.valid_password?(params[:password]) && user.imeino == params[:imeino]
			
				
				user.password = params[:new_password]
				if user.save
					user.reset_authentication_token! 
					render :json => {:success => true, :auth_token => user.authentication_token} and return
				else
					render :json => {:success => false, :message =>"#{user.errors.full_messages.join(', ')}!"}
				end
				
			
		else 
			render :json => {:success => false, :message => "Invalid Phone no or Password or imei no"}and return
		end

	end
end


