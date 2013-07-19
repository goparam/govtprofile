class Sendmail < ActionMailer::Base
  default from: "mahasuvidha2013@gmail.com"
  

  def registration_confirmation(user)
    @user = user
    mail(:to => "#{"user.name"} <#{user.mail}>", :subject => "Registered")
  end

  def password_reset(user)

  	@user = user
    mail(:to => "#{"user.name"} <#{user.mail}>", :subject => "Password Reset")
  end
end
