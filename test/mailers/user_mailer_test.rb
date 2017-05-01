require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  
  def setup
    @user = users(:sarah)
  end
  
  test "account_activation" do
    mail = UserMailer.account_activation(@user)
    assert_equal "Account activation", mail.subject
    assert_equal ["sarah@example.com"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match (/activate your account/), mail.body.encoded
  end

  test "password_reset" do
    mail = UserMailer.password_reset(@user)
    assert_equal "Password reset", mail.subject
    assert_equal ["sarah@example.com"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match (/reset your password/), mail.body.encoded
  end

end
