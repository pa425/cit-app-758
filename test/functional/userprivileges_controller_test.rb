require 'test_helper'

class UserprivilegesControllerTest < ActionController::TestCase
  setup do
    @userprivilege = userprivileges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userprivileges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userprivilege" do
    assert_difference('Userprivilege.count') do
      post :create, userprivilege: { privilegeLevel: @userprivilege.privilegeLevel }
    end

    assert_redirected_to userprivilege_path(assigns(:userprivilege))
  end

  test "should show userprivilege" do
    get :show, id: @userprivilege
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userprivilege
    assert_response :success
  end

  test "should update userprivilege" do
    put :update, id: @userprivilege, userprivilege: { privilegeLevel: @userprivilege.privilegeLevel }
    assert_redirected_to userprivilege_path(assigns(:userprivilege))
  end

  test "should destroy userprivilege" do
    assert_difference('Userprivilege.count', -1) do
      delete :destroy, id: @userprivilege
    end

    assert_redirected_to userprivileges_path
  end
end
