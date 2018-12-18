require 'test_helper'

class PaidOffdaysControllerTest < ActionController::TestCase
  setup do
    @paid_offday = paid_offdays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paid_offdays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paid_offday" do
    assert_difference('PaidOffday.count') do
      post :create, paid_offday: { day_quantity: @paid_offday.day_quantity, employee_id: @paid_offday.employee_id, end_date: @paid_offday.end_date, notes: @paid_offday.notes, order_id: @paid_offday.order_id, paid_offday_type_id: @paid_offday.paid_offday_type_id, start_date: @paid_offday.start_date }
    end

    assert_redirected_to paid_offday_path(assigns(:paid_offday))
  end

  test "should show paid_offday" do
    get :show, id: @paid_offday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paid_offday
    assert_response :success
  end

  test "should update paid_offday" do
    patch :update, id: @paid_offday, paid_offday: { day_quantity: @paid_offday.day_quantity, employee_id: @paid_offday.employee_id, end_date: @paid_offday.end_date, notes: @paid_offday.notes, order_id: @paid_offday.order_id, paid_offday_type_id: @paid_offday.paid_offday_type_id, start_date: @paid_offday.start_date }
    assert_redirected_to paid_offday_path(assigns(:paid_offday))
  end

  test "should destroy paid_offday" do
    assert_difference('PaidOffday.count', -1) do
      delete :destroy, id: @paid_offday
    end

    assert_redirected_to paid_offdays_path
  end
end
