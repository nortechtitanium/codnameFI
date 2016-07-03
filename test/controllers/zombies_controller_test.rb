require 'test_helper'

class ZombiesControllerTest < ActionController::TestCase
  test "should get create_table" do
    get :create_table
    assert_response :success
  end

end
