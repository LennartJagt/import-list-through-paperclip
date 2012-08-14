require 'test_helper'

class InstrulifeListsControllerTest < ActionController::TestCase
  setup do
    @instrulife_list = instrulife_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instrulife_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instrulife_list" do
    assert_difference('InstrulifeList.count') do
      post :create, instrulife_list: { name: @instrulife_list.name }
    end

    assert_redirected_to instrulife_list_path(assigns(:instrulife_list))
  end

  test "should show instrulife_list" do
    get :show, id: @instrulife_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instrulife_list
    assert_response :success
  end

  test "should update instrulife_list" do
    put :update, id: @instrulife_list, instrulife_list: { name: @instrulife_list.name }
    assert_redirected_to instrulife_list_path(assigns(:instrulife_list))
  end

  test "should destroy instrulife_list" do
    assert_difference('InstrulifeList.count', -1) do
      delete :destroy, id: @instrulife_list
    end

    assert_redirected_to instrulife_lists_path
  end
end
