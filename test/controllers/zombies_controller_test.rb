require 'test_helper'

class ZombiesControllerTest < ActionController::TestCase
  test "should get createzombie" do
    get :createzombie
    assert_response :success
  end

end
