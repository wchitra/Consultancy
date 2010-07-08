require 'test_helper'

class RecruitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recruits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recruit" do
    assert_difference('Recruit.count') do
      post :create, :recruit => { }
    end

    assert_redirected_to recruit_path(assigns(:recruit))
  end

  test "should show recruit" do
    get :show, :id => recruits(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => recruits(:one).to_param
    assert_response :success
  end

  test "should update recruit" do
    put :update, :id => recruits(:one).to_param, :recruit => { }
    assert_redirected_to recruit_path(assigns(:recruit))
  end

  test "should destroy recruit" do
    assert_difference('Recruit.count', -1) do
      delete :destroy, :id => recruits(:one).to_param
    end

    assert_redirected_to recruits_path
  end
end
