class ContactController < ApplicationController

	def index
		@contact = Contact.new
	end

	def create
		print "========#{params}========="
		@contact = Contact.new(params[:contact])
		@contact.message = params[:message]

		if @contact.save
			print "---------------save successfully------------"
			flash[:success] = "Your message has been sent successfully!"
			ContactMailer.send_message(@contact.name, @contact.email, @contact.message).deliver
		else
			print "---------------failed------------"
			flash[:error] = "#{@contact.errors.full_messages}!"			
		end		
		redirect_to "/contact/"
	end

end
