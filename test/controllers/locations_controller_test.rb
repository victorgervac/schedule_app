require "test_helper"

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get locations_url
    assert_response :success
  end

  test "should get new" do
    get new_location_url
    assert_response :success
  end

  test "should create location" do
    assert_difference("Location.count") do
      post locations_url, params: { location: { address_line_one: @location.address_line_one, address_line_two: @location.address_line_two, city: @location.city, cleaner_title: @location.cleaner_title, client_id: @location.client_id, client_title: @location.client_title, details: @location.details, state: @location.state, zip: @location.zip } }
    end

    assert_redirected_to location_url(Location.last)
  end

  test "should show location" do
    get location_url(@location)
    assert_response :success
  end

  test "should get edit" do
    get edit_location_url(@location)
    assert_response :success
  end

  test "should update location" do
    patch location_url(@location), params: { location: { address_line_one: @location.address_line_one, address_line_two: @location.address_line_two, city: @location.city, cleaner_title: @location.cleaner_title, client_id: @location.client_id, client_title: @location.client_title, details: @location.details, state: @location.state, zip: @location.zip } }
    assert_redirected_to location_url(@location)
  end

  test "should destroy location" do
    assert_difference("Location.count", -1) do
      delete location_url(@location)
    end

    assert_redirected_to locations_url
  end
end
