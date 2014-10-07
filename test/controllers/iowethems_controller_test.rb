require 'test_helper'

class IowethemsControllerTest < ActionController::TestCase
  setup do
    @iowethem = iowethems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iowethems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iowethem" do
    assert_difference('Iowethem.count') do
      post :create, iowethem: { amount: @iowethem.amount, person: @iowethem.person }
    end

    assert_redirected_to iowethem_path(assigns(:iowethem))
  end

  test "should show iowethem" do
    get :show, id: @iowethem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iowethem
    assert_response :success
  end

  test "should update iowethem" do
    patch :update, id: @iowethem, iowethem: { amount: @iowethem.amount, person: @iowethem.person }
    assert_redirected_to iowethem_path(assigns(:iowethem))
  end

  test "should destroy iowethem" do
    assert_difference('Iowethem.count', -1) do
      delete :destroy, id: @iowethem
    end

    assert_redirected_to iowethems_path
  end
end
