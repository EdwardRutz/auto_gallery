require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # Test to make sure the initial model object is valid, @user
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  # Test for the presence of a name attribute
  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

end
