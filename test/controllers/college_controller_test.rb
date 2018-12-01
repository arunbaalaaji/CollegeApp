require 'test_helper'

class CollegeControllerTest < ActionController::TestCase
  test "should get signinaction" do
    get :signinaction
    assert_response :success
  end

  test "should get signupaction" do
    get :signupaction
    assert_response :success
  end

end
