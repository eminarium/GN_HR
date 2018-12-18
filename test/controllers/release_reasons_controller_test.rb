require 'test_helper'

class ReleaseReasonsControllerTest < ActionController::TestCase
  setup do
    @release_reason = release_reasons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:release_reasons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create release_reason" do
    assert_difference('ReleaseReason.count') do
      post :create, release_reason: { notes: @release_reason.notes, release_reason_title: @release_reason.release_reason_title }
    end

    assert_redirected_to release_reason_path(assigns(:release_reason))
  end

  test "should show release_reason" do
    get :show, id: @release_reason
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @release_reason
    assert_response :success
  end

  test "should update release_reason" do
    patch :update, id: @release_reason, release_reason: { notes: @release_reason.notes, release_reason_title: @release_reason.release_reason_title }
    assert_redirected_to release_reason_path(assigns(:release_reason))
  end

  test "should destroy release_reason" do
    assert_difference('ReleaseReason.count', -1) do
      delete :destroy, id: @release_reason
    end

    assert_redirected_to release_reasons_path
  end
end
