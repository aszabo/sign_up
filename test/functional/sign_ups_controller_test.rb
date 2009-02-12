require 'test_helper'

class SignUpsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sign_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sign_up" do
    assert_difference('SignUp.count') do
      post :create, :sign_up => { }
    end

    assert_redirected_to sign_up_path(assigns(:sign_up))
  end

  test "should show sign_up" do
    get :show, :id => sign_ups(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sign_ups(:one).id
    assert_response :success
  end

  test "should update sign_up" do
    put :update, :id => sign_ups(:one).id, :sign_up => { }
    assert_redirected_to sign_up_path(assigns(:sign_up))
  end

  test "should destroy sign_up" do
    assert_difference('SignUp.count', -1) do
      delete :destroy, :id => sign_ups(:one).id
    end

    assert_redirected_to sign_ups_path
  end
end
