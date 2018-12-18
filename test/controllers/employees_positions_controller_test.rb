require 'test_helper'

class EmployeesPositionsControllerTest < ActionController::TestCase
  setup do
    @employees_position = employees_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employees_position" do
    assert_difference('EmployeesPosition.count') do
      post :create, employees_position: { assigned_date: @employees_position.assigned_date, employee_id: @employees_position.employee_id, is_changed: @employees_position.is_changed, is_released: @employees_position.is_released, is_temporary: @employees_position.is_temporary, notes: @employees_position.notes, position_id: @employees_position.position_id, position_type_id: @employees_position.position_type_id, release_reason_id: @employees_position.release_reason_id, released_date: @employees_position.released_date, temporary_end_date: @employees_position.temporary_end_date, temporary_start_date: @employees_position.temporary_start_date }
    end

    assert_redirected_to employees_position_path(assigns(:employees_position))
  end

  test "should show employees_position" do
    get :show, id: @employees_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employees_position
    assert_response :success
  end

  test "should update employees_position" do
    patch :update, id: @employees_position, employees_position: { assigned_date: @employees_position.assigned_date, employee_id: @employees_position.employee_id, is_changed: @employees_position.is_changed, is_released: @employees_position.is_released, is_temporary: @employees_position.is_temporary, notes: @employees_position.notes, position_id: @employees_position.position_id, position_type_id: @employees_position.position_type_id, release_reason_id: @employees_position.release_reason_id, released_date: @employees_position.released_date, temporary_end_date: @employees_position.temporary_end_date, temporary_start_date: @employees_position.temporary_start_date }
    assert_redirected_to employees_position_path(assigns(:employees_position))
  end

  test "should destroy employees_position" do
    assert_difference('EmployeesPosition.count', -1) do
      delete :destroy, id: @employees_position
    end

    assert_redirected_to employees_positions_path
  end
end
