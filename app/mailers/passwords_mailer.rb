class PasswordsMailer < ApplicationMailer

  def reset_password
    @user = params[:user]
    mail to: @user.email, subject: "Password Reset Request"
  end

  def invalid_password_reset
    @user = params[:user]
    mail to: @user.email, subject: "Invalid or Expired Password Reset Attempt"
  end

  def temporary_password
    @user = params[:user]
    @temporary_password = params[:temporary_password]
    mail to: @user.email, subject: "Your Temporary Password"
  end

end
