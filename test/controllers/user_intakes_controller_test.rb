require 'test_helper'

class UserIntakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_intake = user_intakes(:one)
  end

  test "should get index" do
    get user_intakes_url
    assert_response :success
  end

  test "should get new" do
    get new_user_intake_url
    assert_response :success
  end

  test "should create user_intake" do
    assert_difference('UserIntake.count') do
      post user_intakes_url, params: { user_intake: { product_id: @user_intake.product_id, user_id: @user_intake.user_id } }
    end

    assert_redirected_to user_intake_url(UserIntake.last)
  end

  test "should show user_intake" do
    get user_intake_url(@user_intake)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_intake_url(@user_intake)
    assert_response :success
  end

  test "should update user_intake" do
    patch user_intake_url(@user_intake), params: { user_intake: { product_id: @user_intake.product_id, user_id: @user_intake.user_id } }
    assert_redirected_to user_intake_url(@user_intake)
  end

  test "should destroy user_intake" do
    assert_difference('UserIntake.count', -1) do
      delete user_intake_url(@user_intake)
    end

    assert_redirected_to user_intakes_url
  end
end
