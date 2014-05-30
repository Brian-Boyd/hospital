require 'test_helper'

class DoctorsControllerTest < ActionController::TestCase
  test "should get name" do
    get :name
    assert_response :success
  end

end
