require "application_system_test_case"

class FriendAppsTest < ApplicationSystemTestCase
  setup do
    @friend_app = friend_apps(:one)
  end

  test "visiting the index" do
    visit friend_apps_url
    assert_selector "h1", text: "Friend apps"
  end

  test "should create friend app" do
    visit friend_apps_url
    click_on "New friend app"

    fill_in "Email", with: @friend_app.email
    fill_in "First name", with: @friend_app.first_name
    fill_in "Last name", with: @friend_app.last_name
    fill_in "Linkedin", with: @friend_app.linkedin
    fill_in "Phone", with: @friend_app.phone
    click_on "Create Friend app"

    assert_text "Friend app was successfully created"
    click_on "Back"
  end

  test "should update Friend app" do
    visit friend_app_url(@friend_app)
    click_on "Edit this friend app", match: :first

    fill_in "Email", with: @friend_app.email
    fill_in "First name", with: @friend_app.first_name
    fill_in "Last name", with: @friend_app.last_name
    fill_in "Linkedin", with: @friend_app.linkedin
    fill_in "Phone", with: @friend_app.phone
    click_on "Update Friend app"

    assert_text "Friend app was successfully updated"
    click_on "Back"
  end

  test "should destroy Friend app" do
    visit friend_app_url(@friend_app)
    click_on "Destroy this friend app", match: :first

    assert_text "Friend app was successfully destroyed"
  end
end
