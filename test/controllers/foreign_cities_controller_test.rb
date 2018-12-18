require 'test_helper'

class ForeignCitiesControllerTest < ActionController::TestCase
  setup do
    @foreign_city = foreign_cities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foreign_cities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foreign_city" do
    assert_difference('ForeignCity.count') do
      post :create, foreign_city: { country_id: @foreign_city.country_id, foreign_city_name: @foreign_city.foreign_city_name, notes: @foreign_city.notes }
    end

    assert_redirected_to foreign_city_path(assigns(:foreign_city))
  end

  test "should show foreign_city" do
    get :show, id: @foreign_city
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foreign_city
    assert_response :success
  end

  test "should update foreign_city" do
    patch :update, id: @foreign_city, foreign_city: { country_id: @foreign_city.country_id, foreign_city_name: @foreign_city.foreign_city_name, notes: @foreign_city.notes }
    assert_redirected_to foreign_city_path(assigns(:foreign_city))
  end

  test "should destroy foreign_city" do
    assert_difference('ForeignCity.count', -1) do
      delete :destroy, id: @foreign_city
    end

    assert_redirected_to foreign_cities_path
  end
end
