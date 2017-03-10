require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get generateWorkout" do
    get static_pages_generateWorkout_url
    assert_response :success
  end

  test "should get displayWorkout" do
    get static_pages_displayWorkout_url
    assert_response :success
  end

  test "should get generateMeal" do
    get static_pages_generateMeal_url
    assert_response :success
  end

  test "should get userTracking" do
    get static_pages_userTracking_url
    assert_response :success
  end

end
