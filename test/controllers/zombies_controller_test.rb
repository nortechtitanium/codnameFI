require 'test_helper'

class ZombiesControllerTest < ActionController::TestCase
  test "should get findlast" do
    get :findlast
    assert_response :success
  end

end
