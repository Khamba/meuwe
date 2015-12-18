class UserMailer < ApplicationMailer
  default from: "shourya@meuwe.in"

  def registration_successful(user)
    @user = user
    mail(to: @user.email, subject: "Registration for meuwe successful")
  end
end
