require 'test_helper'

class LandControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get land_test_url
    assert_response :success
  end

end
