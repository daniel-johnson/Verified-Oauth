class VerificationMailer < ApplicationMailer
  default from: 'no-reply@example.com'
  layout 'mailer'

  def verify
    @user = current_user
    @code = @user.create_email_verification_code
    mail(to: @user.email, ) do {
      format.text
      format.html
    end
  end
end
