require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    # See my other comment about arguments. I know this is direct from the book
    # but as I have said in class he is formtting things to fit them on a page
    # not always in the way I have laid out as correct in the course styleguide.
    @user = User.new(name: "Joe User", email: "joe@example.com",
                    password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @user.valid?
  end
  
  # Here wouldn't a better name for the test be 'an empty string is not valid'?
  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end
  
  # Same as above
  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end
  
  test "email validation should accept valid addresses" do
    # more alignment issues. with word arrays I'm even ok with them being longer
    # than 80 characters
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    # or
    #valid_addresses = %w[user@example.com 
    #                     USER@foo.COM 
    #                     A_US-ER@foo.bar.org 
    #                     first.last@foo.jp 
    #                     alice+bob@baz.cn]
    # See how much easier it is to see what is in the list when you break it apart?
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                          foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  
  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end
end