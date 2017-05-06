require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_response :success
  end

  test "should get generateWorkout" do
    get generate_workout_path
    assert_response :success
  end

  test "should get displayWorkout" do
    get display_workout_path
    assert_response :success
  end

  test "should get userTracking" do
    get user_tracking_path
    assert_response :success
  end
  
  

end
