require 'test_helper'

class ProlongationsControllerTest < ActionController::TestCase
  setup do
    @prolongation = prolongations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prolongations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prolongation" do
    assert_difference('Prolongation.count') do
      post :create, prolongation: { employees_position_id: @prolongation.employees_position_id, end_date: @prolongation.end_date, is_temporary: @prolongation.is_temporary, notes: @prolongation.notes, order_id: @prolongation.order_id, start_date: @prolongation.start_date }
    end

    assert_redirected_to prolongation_path(assigns(:prolongation))
  end

  test "should show prolongation" do
    get :show, id: @prolongation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prolongation
    assert_response :success
  end

  test "should update prolongation" do
    patch :update, id: @prolongation, prolongation: { employees_position_id: @prolongation.employees_position_id, end_date: @prolongation.end_date, is_temporary: @prolongation.is_temporary, notes: @prolongation.notes, order_id: @prolongation.order_id, start_date: @prolongation.start_date }
    assert_redirected_to prolongation_path(assigns(:prolongation))
  end

  test "should destroy prolongation" do
    assert_difference('Prolongation.count', -1) do
      delete :destroy, id: @prolongation
    end

    assert_redirected_to prolongations_path
  end
end
