require 'test_helper'

class TrackedThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tracked_thing = tracked_things(:one)
  end

  test "should get index" do
    get tracked_things_url
    assert_response :success
  end

  test "should get new" do
    get new_tracked_thing_url
    assert_response :success
  end

  test "should create tracked_thing" do
    assert_difference('TrackedThing.count') do
      post tracked_things_url, params: { tracked_thing: { notes: @tracked_thing.notes, time_of_thing: @tracked_thing.time_of_thing } }
    end

    assert_redirected_to tracked_thing_url(TrackedThing.last)
  end

  test "should show tracked_thing" do
    get tracked_thing_url(@tracked_thing)
    assert_response :success
  end

  test "should get edit" do
    get edit_tracked_thing_url(@tracked_thing)
    assert_response :success
  end

  test "should update tracked_thing" do
    patch tracked_thing_url(@tracked_thing), params: { tracked_thing: { notes: @tracked_thing.notes, time_of_thing: @tracked_thing.time_of_thing } }
    assert_redirected_to tracked_thing_url(@tracked_thing)
  end

  test "should destroy tracked_thing" do
    assert_difference('TrackedThing.count', -1) do
      delete tracked_thing_url(@tracked_thing)
    end

    assert_redirected_to tracked_things_url
  end
end
