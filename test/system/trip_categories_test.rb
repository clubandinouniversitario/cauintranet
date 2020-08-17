require "application_system_test_case"

class TripCategoriesTest < ApplicationSystemTestCase
  setup do
    @trip_category = trip_categories(:one)
  end

  test "visiting the index" do
    visit trip_categories_url
    assert_selector "h1", text: "Trip Categories"
  end

  test "creating a Trip category" do
    visit trip_categories_url
    click_on "New Trip Category"

    fill_in "Name", with: @trip_category.name
    click_on "Create Trip category"

    assert_text "Trip category was successfully created"
    click_on "Back"
  end

  test "updating a Trip category" do
    visit trip_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @trip_category.name
    click_on "Update Trip category"

    assert_text "Trip category was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip category" do
    visit trip_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip category was successfully destroyed"
  end
end
