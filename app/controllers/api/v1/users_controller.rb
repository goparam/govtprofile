class Api::V1::UsersController < ApplicationController
	def login
		print "----------------------params = #{params}------------------------"

		if params[:email].blank? || params[:password].blank?
			render :json => {:success => false, :message => "Missing parameters"}, :status => 400 and return
		end

		user = User.find_for_database_authentication(:email => params[:email])

		return invalid_login_attempt unless user

		if user.valid_password?(params[:password]) 
			if user.approved==1 || user.approved==2
				user.reset_authentication_token! 
				render :json => {:success => true, :auth_token => user.authentication_token} and return
			else
				render :json => {:success => false, :massage => "You have signed up successfully but your account has not been approved by your administrator yet"}and return
			end
		else 
			render :json => {:success => false, :massage => "Invalid password"}and return
		end
	end
	def registar
		if params[:user][:email].blank? || params[:user][:password].blank?|| params[:user][:password_confirmation].blank?
			render :json => {:success => false, :message => "Missing parameters"}, :status => 400 and return
		end
		@user=User.new(params[:user])
		if @user.save 
			
			render :json => {:success => true, :auth_token =>  @user.authentication_token}
		else
			
			render :json => {:success => "#{@user.errors.full_messages}!"}
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
end


