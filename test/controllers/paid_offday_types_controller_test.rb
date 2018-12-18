require 'test_helper'

class PaidOffdayTypesControllerTest < ActionController::TestCase
  setup do
    @paid_offday_type = paid_offday_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paid_offday_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paid_offday_type" do
    assert_difference('PaidOffdayType.count') do
      post :create, paid_offday_type: { notes: @paid_offday_type.notes, paid_offday_type_title: @paid_offday_type.paid_offday_type_title }
    end

    assert_redirected_to paid_offday_type_path(assigns(:paid_offday_type))
  end

  test "should show paid_offday_type" do
    get :show, id: @paid_offday_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paid_offday_type
    assert_response :success
  end

  test "should update paid_offday_type" do
    patch :update, id: @paid_offday_type, paid_offday_type: { notes: @paid_offday_type.notes, paid_offday_type_title: @paid_offday_type.paid_offday_type_title }
    assert_redirected_to paid_offday_type_path(assigns(:paid_offday_type))
  end

  test "should destroy paid_offday_type" do
    assert_difference('PaidOffdayType.count', -1) do
      delete :destroy, id: @paid_offday_type
    end

    assert_redirected_to paid_offday_types_path
  end
end
