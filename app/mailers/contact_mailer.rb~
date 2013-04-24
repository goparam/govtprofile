class ContactMailer < ActionMailer::Base

	def send_message(name, email, message)
		@name = name
		@email = email
		@message = message
		mail(:to => ["easyrails@gmail.com", "pravin.vaja@definelabs.com"], :subject => "1 new message from easyrails.herokuapp.com", :from => "easyrails@gmail.com")
	end

end
