require 'test_helper'

class CertificateTypesControllerTest < ActionController::TestCase
  setup do
    @certificate_type = certificate_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificate_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificate_type" do
    assert_difference('CertificateType.count') do
      post :create, certificate_type: { certificate_type_title: @certificate_type.certificate_type_title, notes: @certificate_type.notes }
    end

    assert_redirected_to certificate_type_path(assigns(:certificate_type))
  end

  test "should show certificate_type" do
    get :show, id: @certificate_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certificate_type
    assert_response :success
  end

  test "should update certificate_type" do
    patch :update, id: @certificate_type, certificate_type: { certificate_type_title: @certificate_type.certificate_type_title, notes: @certificate_type.notes }
    assert_redirected_to certificate_type_path(assigns(:certificate_type))
  end

  test "should destroy certificate_type" do
    assert_difference('CertificateType.count', -1) do
      delete :destroy, id: @certificate_type
    end

    assert_redirected_to certificate_types_path
  end
end
