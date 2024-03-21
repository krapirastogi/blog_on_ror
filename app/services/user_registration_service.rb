class UserRegistrationService
    def self.call(user)
        if user.persisted?
            WelcomeMailer.registration_mailer(user).deliver_now
        end
    end
    
end