class Api::V1::PhonebookuserController < ApplicationController
skip_before_filter :verify_authenticity_token, :only => [:register]

	def signup
		print "----------------------params = #{params}------------------------"
		
		if params[:user].blank?
			render :json => {:success => false, :message => "User is empty"} and return
		end

		if params[:user][:phone].blank? ||params[:user][:imeino].nil?||params[:user][:imeino].blank?
			render :json => {:success => false, :message => "Missing parameters"} and return
		end

		if !params[:image_base64].blank?
		  print "image base 64 is not blank"

          data = StringIO.new(Base64.decode64(params[:image_base64]))
          @user.photo = data
         end

         if @user.save 
			
			render :json => {:success => true, :message => "Successfully registered!"}
		else
			
			render :json => {:success => false, :message =>"#{@user.errors.full_messages.join(', ')}!"}
		end
		
		   
	end

end
