require 'test_helper'

class CertificatesControllerTest < ActionController::TestCase
  setup do
    @certificate = certificates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificate" do
    assert_difference('Certificate.count') do
      post :create, certificate: { certificate_no: @certificate.certificate_no, certificate_title: @certificate.certificate_title, certificate_type_id: @certificate.certificate_type_id, employee_id: @certificate.employee_id, expiry_date: @certificate.expiry_date, issued_by: @certificate.issued_by, issued_date: @certificate.issued_date, notes: @certificate.notes }
    end

    assert_redirected_to certificate_path(assigns(:certificate))
  end

  test "should show certificate" do
    get :show, id: @certificate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certificate
    assert_response :success
  end

  test "should update certificate" do
    patch :update, id: @certificate, certificate: { certificate_no: @certificate.certificate_no, certificate_title: @certificate.certificate_title, certificate_type_id: @certificate.certificate_type_id, employee_id: @certificate.employee_id, expiry_date: @certificate.expiry_date, issued_by: @certificate.issued_by, issued_date: @certificate.issued_date, notes: @certificate.notes }
    assert_redirected_to certificate_path(assigns(:certificate))
  end

  test "should destroy certificate" do
    assert_difference('Certificate.count', -1) do
      delete :destroy, id: @certificate
    end

    assert_redirected_to certificates_path
  end
end
