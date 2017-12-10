require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  # TODO.Double check this test???
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

end
