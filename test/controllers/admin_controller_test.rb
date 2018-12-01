require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get studdetail" do
    get :studdetail
    assert_response :success
  end

  test "should get studdelete" do
    get :studdelete
    assert_response :success
  end

  test "should get addquestion" do
    get :addquestion
    assert_response :success
  end

  test "should get updatemark" do
    get :updatemark
    assert_response :success
  end

end
