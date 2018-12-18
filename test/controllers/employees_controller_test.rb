require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { dob: @employee.dob, first_name: @employee.first_name, gender: @employee.gender, is_local: @employee.is_local, is_military_liable: @employee.is_military_liable, last_name: @employee.last_name, local_passport_given_date: @employee.local_passport_given_date, local_passport_issued_by: @employee.local_passport_issued_by, local_passport_no: @employee.local_passport_no, local_passport_scan_url: @employee.local_passport_scan_url, local_passport_serial: @employee.local_passport_serial, marital_status_id: @employee.marital_status_id, nationality_id: @employee.nationality_id, notes: @employee.notes, patronymic: @employee.patronymic, photo_url: @employee.photo_url }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { dob: @employee.dob, first_name: @employee.first_name, gender: @employee.gender, is_local: @employee.is_local, is_military_liable: @employee.is_military_liable, last_name: @employee.last_name, local_passport_given_date: @employee.local_passport_given_date, local_passport_issued_by: @employee.local_passport_issued_by, local_passport_no: @employee.local_passport_no, local_passport_scan_url: @employee.local_passport_scan_url, local_passport_serial: @employee.local_passport_serial, marital_status_id: @employee.marital_status_id, nationality_id: @employee.nationality_id, notes: @employee.notes, patronymic: @employee.patronymic, photo_url: @employee.photo_url }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
