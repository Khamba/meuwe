class UserMailer < ApplicationMailer
  default from: "no-reply@meuwe.in"

  def registration_successful(user)
    @user = user
    mail(to: @user.email, subject: "Registration for meuwe successful")
  end
end
