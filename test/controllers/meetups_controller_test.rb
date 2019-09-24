require 'test_helper'

class MeetupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meetup = meetups(:one)
  end

  test "should get index" do
    get meetups_url, as: :json
    assert_response :success
  end

  test "should create meetup" do
    assert_difference('Meetup.count') do
      post meetups_url, params: { meetup: { comments: @meetup.comments, date: @meetup.date, friend_id: @meetup.friend_id, location: @meetup.location } }, as: :json
    end

    assert_response 201
  end

  test "should show meetup" do
    get meetup_url(@meetup), as: :json
    assert_response :success
  end

  test "should update meetup" do
    patch meetup_url(@meetup), params: { meetup: { comments: @meetup.comments, date: @meetup.date, friend_id: @meetup.friend_id, location: @meetup.location } }, as: :json
    assert_response 200
  end

  test "should destroy meetup" do
    assert_difference('Meetup.count', -1) do
      delete meetup_url(@meetup), as: :json
    end

    assert_response 204
  end
end
