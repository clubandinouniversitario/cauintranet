require 'test_helper'

class TripCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_category = trip_categories(:one)
  end

  test "should get index" do
    get trip_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_category_url
    assert_response :success
  end

  test "should create trip_category" do
    assert_difference('TripCategory.count') do
      post trip_categories_url, params: { trip_category: { name: @trip_category.name } }
    end

    assert_redirected_to trip_category_url(TripCategory.last)
  end

  test "should show trip_category" do
    get trip_category_url(@trip_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_category_url(@trip_category)
    assert_response :success
  end

  test "should update trip_category" do
    patch trip_category_url(@trip_category), params: { trip_category: { name: @trip_category.name } }
    assert_redirected_to trip_category_url(@trip_category)
  end

  test "should destroy trip_category" do
    assert_difference('TripCategory.count', -1) do
      delete trip_category_url(@trip_category)
    end

    assert_redirected_to trip_categories_url
  end
end
