class UserMailer < ApplicationMailer

  def welcome
    @user = params[:user]
    mail to: @user.email, subject: "Welcome #{@user.username} to Testing123!"
  end

end
