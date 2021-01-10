require "application_system_test_case"

class UserIntakesTest < ApplicationSystemTestCase
  setup do
    @user_intake = user_intakes(:one)
  end

  test "visiting the index" do
    visit user_intakes_url
    assert_selector "h1", text: "User Intakes"
  end

  test "creating a User intake" do
    visit user_intakes_url
    click_on "New User Intake"

    fill_in "Product", with: @user_intake.product_id
    fill_in "User", with: @user_intake.user_id
    click_on "Create User intake"

    assert_text "User intake was successfully created"
    click_on "Back"
  end

  test "updating a User intake" do
    visit user_intakes_url
    click_on "Edit", match: :first

    fill_in "Product", with: @user_intake.product_id
    fill_in "User", with: @user_intake.user_id
    click_on "Update User intake"

    assert_text "User intake was successfully updated"
    click_on "Back"
  end

  test "destroying a User intake" do
    visit user_intakes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User intake was successfully destroyed"
  end
end
