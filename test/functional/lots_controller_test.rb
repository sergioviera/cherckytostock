require 'test_helper'

class LotsControllerTest < ActionController::TestCase
  setup do
    @lot = lots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lot" do
    assert_difference('Lot.count') do
      post :create, lot: { amount: @lot.amount, createDate: @lot.createDate, currentAmount: @lot.currentAmount, description: @lot.description, expireDate: @lot.expireDate, productId: @lot.productId }
    end

    assert_redirected_to lot_path(assigns(:lot))
  end

  test "should show lot" do
    get :show, id: @lot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lot
    assert_response :success
  end

  test "should update lot" do
    put :update, id: @lot, lot: { amount: @lot.amount, createDate: @lot.createDate, currentAmount: @lot.currentAmount, description: @lot.description, expireDate: @lot.expireDate, productId: @lot.productId }
    assert_redirected_to lot_path(assigns(:lot))
  end

  test "should destroy lot" do
    assert_difference('Lot.count', -1) do
      delete :destroy, id: @lot
    end

    assert_redirected_to lots_path
  end
end
