require "test_helper"

class FriendAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friend_app = friend_apps(:one)
  end

  test "should get index" do
    get friend_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_friend_app_url
    assert_response :success
  end

  test "should create friend_app" do
    assert_difference("FriendApp.count") do
      post friend_apps_url, params: { friend_app: { email: @friend_app.email, first_name: @friend_app.first_name, last_name: @friend_app.last_name, linkedin: @friend_app.linkedin, phone: @friend_app.phone } }
    end

    assert_redirected_to friend_app_url(FriendApp.last)
  end

  test "should show friend_app" do
    get friend_app_url(@friend_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_friend_app_url(@friend_app)
    assert_response :success
  end

  test "should update friend_app" do
    patch friend_app_url(@friend_app), params: { friend_app: { email: @friend_app.email, first_name: @friend_app.first_name, last_name: @friend_app.last_name, linkedin: @friend_app.linkedin, phone: @friend_app.phone } }
    assert_redirected_to friend_app_url(@friend_app)
  end

  test "should destroy friend_app" do
    assert_difference("FriendApp.count", -1) do
      delete friend_app_url(@friend_app)
    end

    assert_redirected_to friend_apps_url
  end
end
