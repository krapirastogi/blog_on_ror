class UserMailer < ApplicationMailer

    def welcome_email
        # @user = params[:user]
        # @url  = 'http://example.com/login'
        mail(from: 'nitin.gaurav@reddoorz.com', to: 'krapi.rastogi@reddoorz.com' , subject: 'Welcome Reddoorz', cc: 'dev.gupta@reddoorz.com')
    end
end
