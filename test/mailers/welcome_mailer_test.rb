require "test_helper"

class WelcomeMailerTest < ActionMailer::TestCase
  test "registration_mailer" do
    mail = WelcomeMailer.registration_mailer
    assert_equal "Registration mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
