require 'test_helper'

class TemporaryaccountsControllerTest < ActionController::TestCase
  setup do
    @temporaryaccount = temporaryaccounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temporaryaccounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temporaryaccount" do
    assert_difference('Temporaryaccount.count') do
      post :create, temporaryaccount: { email: @temporaryaccount.email }
    end

    assert_redirected_to temporaryaccount_path(assigns(:temporaryaccount))
  end

  test "should show temporaryaccount" do
    get :show, id: @temporaryaccount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temporaryaccount
    assert_response :success
  end

  test "should update temporaryaccount" do
    put :update, id: @temporaryaccount, temporaryaccount: { email: @temporaryaccount.email }
    assert_redirected_to temporaryaccount_path(assigns(:temporaryaccount))
  end

  test "should destroy temporaryaccount" do
    assert_difference('Temporaryaccount.count', -1) do
      delete :destroy, id: @temporaryaccount
    end

    assert_redirected_to temporaryaccounts_path
  end
end
