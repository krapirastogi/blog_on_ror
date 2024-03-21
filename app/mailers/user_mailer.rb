class UserMailer < ApplicationMailer

    def welcome_email
        # @user = params[:user]
        # @url  = 'http://example.com/login'
        attachments.inline['holi.jpeg'] = File.read("#{Rails.root}/app/assets/images/holi.jpeg")
        attachments['rails_cheatsheet.pdf'] = File.read("#{Rails.root}/app/assets/images/rails_cheatsheet.pdf")
        mail(from: 'nitin.gaurav@reddoorz.com', to: 'krapi.rastogi@reddoorz.com' , subject: 'Welcome Reddoorz', cc: ['dev.gupta@reddoorz.com','nitin.gaurav@reddoorz.com'])
    end
end
