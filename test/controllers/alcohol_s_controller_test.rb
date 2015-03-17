require 'test_helper'

class AlcoholSControllerTest < ActionController::TestCase
  setup do
    @alcohol_ = alcohol_s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alcohol_s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alcohol_" do
    assert_difference('Alcohol.count') do
      post :create, alcohol_: {  }
    end

    assert_redirected_to alcohol__path(assigns(:alcohol_))
  end

  test "should show alcohol_" do
    get :show, id: @alcohol_
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alcohol_
    assert_response :success
  end

  test "should update alcohol_" do
    patch :update, id: @alcohol_, alcohol_: {  }
    assert_redirected_to alcohol__path(assigns(:alcohol_))
  end

  test "should destroy alcohol_" do
    assert_difference('Alcohol.count', -1) do
      delete :destroy, id: @alcohol_
    end

    assert_redirected_to alcohol_s_path
  end
end
