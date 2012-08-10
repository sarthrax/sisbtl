require 'test_helper'

class ViaturasControllerTest < ActionController::TestCase
  setup do
    @viatura = viaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:viaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create viatura" do
    assert_difference('Viatura.count') do
      post :create, viatura: @viatura.attributes
    end

    assert_redirected_to viatura_path(assigns(:viatura))
  end

  test "should show viatura" do
    get :show, id: @viatura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @viatura
    assert_response :success
  end

  test "should update viatura" do
    put :update, id: @viatura, viatura: @viatura.attributes
    assert_redirected_to viatura_path(assigns(:viatura))
  end

  test "should destroy viatura" do
    assert_difference('Viatura.count', -1) do
      delete :destroy, id: @viatura
    end

    assert_redirected_to viaturas_path
  end
end
