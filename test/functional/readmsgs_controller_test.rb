require 'test_helper'

class ReadmsgsControllerTest < ActionController::TestCase
  setup do
    @readmsg = readmsgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:readmsgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create readmsg" do
    assert_difference('Readmsg.count') do
      post :create, readmsg: { numMsgsRead: @readmsg.numMsgsRead }
    end

    assert_redirected_to readmsg_path(assigns(:readmsg))
  end

  test "should show readmsg" do
    get :show, id: @readmsg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @readmsg
    assert_response :success
  end

  test "should update readmsg" do
    put :update, id: @readmsg, readmsg: { numMsgsRead: @readmsg.numMsgsRead }
    assert_redirected_to readmsg_path(assigns(:readmsg))
  end

  test "should destroy readmsg" do
    assert_difference('Readmsg.count', -1) do
      delete :destroy, id: @readmsg
    end

    assert_redirected_to readmsgs_path
  end
end
