require 'test_helper'

class GeneralOrdersControllerTest < ActionController::TestCase
  setup do
    @general_order = general_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_order" do
    assert_difference('GeneralOrder.count') do
      post :create, general_order: { employee_id: @general_order.employee_id, notes: @general_order.notes, order_content: @general_order.order_content, order_id: @general_order.order_id }
    end

    assert_redirected_to general_order_path(assigns(:general_order))
  end

  test "should show general_order" do
    get :show, id: @general_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_order
    assert_response :success
  end

  test "should update general_order" do
    patch :update, id: @general_order, general_order: { employee_id: @general_order.employee_id, notes: @general_order.notes, order_content: @general_order.order_content, order_id: @general_order.order_id }
    assert_redirected_to general_order_path(assigns(:general_order))
  end

  test "should destroy general_order" do
    assert_difference('GeneralOrder.count', -1) do
      delete :destroy, id: @general_order
    end

    assert_redirected_to general_orders_path
  end
end
