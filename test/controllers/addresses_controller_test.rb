require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { address_type_id: @address.address_type_id, apartment: @address.apartment, city_id: @address.city_id, country_id: @address.country_id, county_id: @address.county_id, employee_id: @address.employee_id, flat: @address.flat, foreign_city_id: @address.foreign_city_id, notes: @address.notes, quartal: @address.quartal, rayon: @address.rayon, region_id: @address.region_id, register_end_date: @address.register_end_date, register_start_date: @address.register_start_date, state_id: @address.state_id, street: @address.street, street_passage: @address.street_passage, village: @address.village }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    patch :update, id: @address, address: { address_type_id: @address.address_type_id, apartment: @address.apartment, city_id: @address.city_id, country_id: @address.country_id, county_id: @address.county_id, employee_id: @address.employee_id, flat: @address.flat, foreign_city_id: @address.foreign_city_id, notes: @address.notes, quartal: @address.quartal, rayon: @address.rayon, region_id: @address.region_id, register_end_date: @address.register_end_date, register_start_date: @address.register_start_date, state_id: @address.state_id, street: @address.street, street_passage: @address.street_passage, village: @address.village }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end
