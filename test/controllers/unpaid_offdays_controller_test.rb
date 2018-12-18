require 'test_helper'

class UnpaidOffdaysControllerTest < ActionController::TestCase
  setup do
    @unpaid_offday = unpaid_offdays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unpaid_offdays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unpaid_offday" do
    assert_difference('UnpaidOffday.count') do
      post :create, unpaid_offday: { day_quantity: @unpaid_offday.day_quantity, employee_id: @unpaid_offday.employee_id, end_date: @unpaid_offday.end_date, notes: @unpaid_offday.notes, order_id: @unpaid_offday.order_id, start_date: @unpaid_offday.start_date, unpaid_offday_type_id: @unpaid_offday.unpaid_offday_type_id }
    end

    assert_redirected_to unpaid_offday_path(assigns(:unpaid_offday))
  end

  test "should show unpaid_offday" do
    get :show, id: @unpaid_offday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unpaid_offday
    assert_response :success
  end

  test "should update unpaid_offday" do
    patch :update, id: @unpaid_offday, unpaid_offday: { day_quantity: @unpaid_offday.day_quantity, employee_id: @unpaid_offday.employee_id, end_date: @unpaid_offday.end_date, notes: @unpaid_offday.notes, order_id: @unpaid_offday.order_id, start_date: @unpaid_offday.start_date, unpaid_offday_type_id: @unpaid_offday.unpaid_offday_type_id }
    assert_redirected_to unpaid_offday_path(assigns(:unpaid_offday))
  end

  test "should destroy unpaid_offday" do
    assert_difference('UnpaidOffday.count', -1) do
      delete :destroy, id: @unpaid_offday
    end

    assert_redirected_to unpaid_offdays_path
  end
end
