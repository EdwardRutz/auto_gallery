require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # Test to make sure the initial model object is valid, @user
  # User.new creates a Ruby object in memory
  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
    password: "password", password_confirmation: "password")
  end

  test "should be valid" do
    assert @user.valid?
  end

  # Tests for the presence of a name and email attribute
  test "name is present" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "email is present" do
    @user.email = "  "
    assert_not @user.valid?
  end

  # Tests to validate length of name and email
  test "name length" do
    @user.name = "a" * 21
    assert_not @user.valid?
  end

  test "email length" do
    @user.email = "a" * 19 + "@example.com"
    assert_not @user.valid?
  end

  # Test for valid and invalid email addresses

  test "accept valid email addresses" do
    valid_addresses = %w[user@example.com USER@fun.COM A_US-ER@fun.fav.org
                         first.last@fun.jp alex+beth@bam.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "reject invalid email addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

    # TODO.Add uniqueness test (cH278)
  # Test for the unique email address and case insensitivity (upcase)
  # @user.dup creates a duplicate user with the same attributes
  # test "email addresses should be unique" do
  #   duplicate_user = @user.dup
  #   duplicate_user.email = @user.email.upcase
  #   @user.save
  #   assert_not duplicate_user.valid?
  # end





end
