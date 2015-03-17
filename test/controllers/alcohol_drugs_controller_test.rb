require 'test_helper'

class AlcoholDrugsControllerTest < ActionController::TestCase
  setup do
    @alcohol_drug = alcohol_drugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alcohol_drugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alcohol_drug" do
    assert_difference('AlcoholDrug.count') do
      post :create, alcohol_drug: { alcohol_addicted: @alcohol_drug.alcohol_addicted, alcohol_period: @alcohol_drug.alcohol_period, alcohol_type: @alcohol_drug.alcohol_type, drugs_adicted: @alcohol_drug.drugs_adicted, drugs_period: @alcohol_drug.drugs_period, drugs_type: @alcohol_drug.drugs_type, previous_treatment: @alcohol_drug.previous_treatment }
    end

    assert_redirected_to alcohol_drug_path(assigns(:alcohol_drug))
  end

  test "should show alcohol_drug" do
    get :show, id: @alcohol_drug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alcohol_drug
    assert_response :success
  end

  test "should update alcohol_drug" do
    patch :update, id: @alcohol_drug, alcohol_drug: { alcohol_addicted: @alcohol_drug.alcohol_addicted, alcohol_period: @alcohol_drug.alcohol_period, alcohol_type: @alcohol_drug.alcohol_type, drugs_adicted: @alcohol_drug.drugs_adicted, drugs_period: @alcohol_drug.drugs_period, drugs_type: @alcohol_drug.drugs_type, previous_treatment: @alcohol_drug.previous_treatment }
    assert_redirected_to alcohol_drug_path(assigns(:alcohol_drug))
  end

  test "should destroy alcohol_drug" do
    assert_difference('AlcoholDrug.count', -1) do
      delete :destroy, id: @alcohol_drug
    end

    assert_redirected_to alcohol_drugs_path
  end
end
