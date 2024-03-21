class WelcomeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.registration_mailer.subject
  #
  def registration_mailer(user)
    @user=user
   
      mail(to: @user.email , subject: 'New user signup ')
    
  end
end
