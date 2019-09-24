require 'test_helper'

class FriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friend = friends(:one)
  end

  test "should get index" do
    get friends_url, as: :json
    assert_response :success
  end

  test "should create friend" do
    assert_difference('Friend.count') do
      post friends_url, params: { friend: { last_meetup: @friend.last_meetup, name: @friend.name, next_meetup: @friend.next_meetup, visit_interval: @friend.visit_interval } }, as: :json
    end

    assert_response 201
  end

  test "should show friend" do
    get friend_url(@friend), as: :json
    assert_response :success
  end

  test "should update friend" do
    patch friend_url(@friend), params: { friend: { last_meetup: @friend.last_meetup, name: @friend.name, next_meetup: @friend.next_meetup, visit_interval: @friend.visit_interval } }, as: :json
    assert_response 200
  end

  test "should destroy friend" do
    assert_difference('Friend.count', -1) do
      delete friend_url(@friend), as: :json
    end

    assert_response 204
  end
end
