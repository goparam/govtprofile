class Api::V1::UsersController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => [:register]
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
		if params[:user][:phone].blank? ||params[:user][:imeino].nil?||params[:user][:imeino].blank?
			render :json => {:success => false, :message => "Missing parameters"} and return
		end
		

		@user=User.new(params[:user])
		# @user.mail=params[:user][:email]
		# @user.email="#{params[:user][:phone]}@gmail.com"
		# 	print "----------------------params = #{params}  hello--before search----------------------\n"
		
		# search1 = "lower(members.phones) like '%#{params[:user][:phone]}%'" unless params[:user][:phone].nil? || params[:user][:phone].blank?
  #       search2 = "(members.email) like '%#{params[:user][:email]}%'" unless params[:user][:email].nil? || params[:user][:email].blank?
  #       search3 = []
  #       search3 << "lower(profiles.name) like '%#{params[:user][:name].downcase}%'" unless params[:user][:name].nil? || params[:user][:name].blank?
  #       search3 << "lower(profiles.name) like '%#{params[:user][:last_name].downcase}%'" unless params[:user][:last_name].nil? || params[:user][:last_name].blank?
  #       print "---------------hellow after serch------------------\n"

  #       @member1 = Member.joins(:profiles).where(search1).uniq
  #       @member2 = Member.joins(:profiles).where(search2).uniq
  #       @member3 = Member.joins(:profiles).where(search3.join(" AND ").to_s).uniq
  #   	print "---------------after member find------------------\n"
        
  #       if 	@member1.length > 0
  #       	@user.member_id=@member1[0].id
  #       elsif @member2.length > 0
  #       	@user.member_id=@member2[0].id
  #       elsif @member3.length > 0
  #       	@user.member_id=@member3[0].id
  #       end
		
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
					
					render :json => {:success => true, :message =>"Reset Password Successfully", :auth_token => user.authentication_token} and return
				else
					render :json => {:success => false, :message =>"#{user.errors.full_messages.join(', ')}!"}
				end
				
			
		else 
			render :json => {:success => false, :message => "Invalid Phone no or Password or imei no"}and return
		end

	end
	def change
		if params[:auth_token].blank? || params[:auth_token].nil?

			render :json => {:success => true, :message => "Auth token must be required!"} and return
		end
		user = User.find_by_authentication_token(params[:auth_token])

		if user.nil?
			render :json => {:success => false, :message => "Invalid token!"} and return
		else
			if user.update_attributes(params[:user])
			
			 	render :json => {:success => true, :message => "Successfully Updated!"} and return
			else
			 	render :json => {:success => false, :message => "#{user.errors.full_messages.join(', ')}!"} and return
			end 
		end


		
	end
	def show 
		
		@user=Member.find(params[:id]).user
		if !@user.nil?
			
			render :json => {:success => true, :log=>"#{@user.longitude}", :lat=>"#{@user.latitude}", :location_updation_time=>"#{@user.location_updation_time.strftime("%d/%m/%Y %H:%M:%S") rescue ""}"} and return
		else
			render :json => {:success => false, :message => "User does not found"} and return
		end
	end
end


