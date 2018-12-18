require 'test_helper'

class ParentTypesControllerTest < ActionController::TestCase
  setup do
    @parent_type = parent_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parent_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parent_type" do
    assert_difference('ParentType.count') do
      post :create, parent_type: { notes: @parent_type.notes, parent_type_title: @parent_type.parent_type_title }
    end

    assert_redirected_to parent_type_path(assigns(:parent_type))
  end

  test "should show parent_type" do
    get :show, id: @parent_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parent_type
    assert_response :success
  end

  test "should update parent_type" do
    patch :update, id: @parent_type, parent_type: { notes: @parent_type.notes, parent_type_title: @parent_type.parent_type_title }
    assert_redirected_to parent_type_path(assigns(:parent_type))
  end

  test "should destroy parent_type" do
    assert_difference('ParentType.count', -1) do
      delete :destroy, id: @parent_type
    end

    assert_redirected_to parent_types_path
  end
end
