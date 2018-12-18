require 'test_helper'

class UnpaidOffdayTypesControllerTest < ActionController::TestCase
  setup do
    @unpaid_offday_type = unpaid_offday_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unpaid_offday_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unpaid_offday_type" do
    assert_difference('UnpaidOffdayType.count') do
      post :create, unpaid_offday_type: { notes: @unpaid_offday_type.notes, unpaid_offday_type_title: @unpaid_offday_type.unpaid_offday_type_title }
    end

    assert_redirected_to unpaid_offday_type_path(assigns(:unpaid_offday_type))
  end

  test "should show unpaid_offday_type" do
    get :show, id: @unpaid_offday_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unpaid_offday_type
    assert_response :success
  end

  test "should update unpaid_offday_type" do
    patch :update, id: @unpaid_offday_type, unpaid_offday_type: { notes: @unpaid_offday_type.notes, unpaid_offday_type_title: @unpaid_offday_type.unpaid_offday_type_title }
    assert_redirected_to unpaid_offday_type_path(assigns(:unpaid_offday_type))
  end

  test "should destroy unpaid_offday_type" do
    assert_difference('UnpaidOffdayType.count', -1) do
      delete :destroy, id: @unpaid_offday_type
    end

    assert_redirected_to unpaid_offday_types_path
  end
end
