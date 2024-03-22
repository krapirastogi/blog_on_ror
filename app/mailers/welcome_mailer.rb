class WelcomeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.registration_mailer.subject
  #
  def registration_mailer(user)
    @user=user
   
      mail(to: @user.email ,cc:'nitin.gaurav@reddoorz.com', subject: 'New user signup ')
    
  end
  def updated_credentials(user)
    @user=user
   
      mail(to: @user.email ,cc:'nitin.gaurav@reddoorz.com', subject: 'Credentials updated')
    
  end
end
