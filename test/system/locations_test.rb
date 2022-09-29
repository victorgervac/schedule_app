require "application_system_test_case"

class LocationsTest < ApplicationSystemTestCase
  setup do
    @location = locations(:one)
  end

  test "visiting the index" do
    visit locations_url
    assert_selector "h1", text: "Locations"
  end

  test "should create location" do
    visit locations_url
    click_on "New location"

    fill_in "Address line one", with: @location.address_line_one
    fill_in "Address line two", with: @location.address_line_two
    fill_in "City", with: @location.city
    fill_in "Cleaner title", with: @location.cleaner_title
    fill_in "Client", with: @location.client_id
    fill_in "Client title", with: @location.client_title
    fill_in "Details", with: @location.details
    fill_in "State", with: @location.state
    fill_in "Zip", with: @location.zip
    click_on "Create Location"

    assert_text "Location was successfully created"
    click_on "Back"
  end

  test "should update Location" do
    visit location_url(@location)
    click_on "Edit this location", match: :first

    fill_in "Address line one", with: @location.address_line_one
    fill_in "Address line two", with: @location.address_line_two
    fill_in "City", with: @location.city
    fill_in "Cleaner title", with: @location.cleaner_title
    fill_in "Client", with: @location.client_id
    fill_in "Client title", with: @location.client_title
    fill_in "Details", with: @location.details
    fill_in "State", with: @location.state
    fill_in "Zip", with: @location.zip
    click_on "Update Location"

    assert_text "Location was successfully updated"
    click_on "Back"
  end

  test "should destroy Location" do
    visit location_url(@location)
    click_on "Destroy this location", match: :first

    assert_text "Location was successfully destroyed"
  end
end
