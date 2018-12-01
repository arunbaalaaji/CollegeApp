require 'test_helper'

class StudentControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get chgpass" do
    get :chgpass
    assert_response :success
  end

  test "should get chgpassaction" do
    get :chgpassaction
    assert_response :success
  end

  test "should get feedback" do
    get :feedback
    assert_response :success
  end

  test "should get feedbackaction" do
    get :feedbackaction
    assert_response :success
  end

  test "should get questbank" do
    get :questbank
    assert_response :success
  end

end
