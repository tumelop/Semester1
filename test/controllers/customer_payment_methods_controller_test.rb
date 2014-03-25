require 'test_helper'

class CustomerPaymentMethodsControllerTest < ActionController::TestCase
  setup do
    @customer_payment_method = customer_payment_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_payment_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_payment_method" do
    assert_difference('CustomerPaymentMethod.count') do
      post :create, customer_payment_method: { credit_cardNumber: @customer_payment_method.credit_cardNumber, payment_method_details: @customer_payment_method.payment_method_details }
    end

    assert_redirected_to customer_payment_method_path(assigns(:customer_payment_method))
  end

  test "should show customer_payment_method" do
    get :show, id: @customer_payment_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_payment_method
    assert_response :success
  end

  test "should update customer_payment_method" do
    patch :update, id: @customer_payment_method, customer_payment_method: { credit_cardNumber: @customer_payment_method.credit_cardNumber, payment_method_details: @customer_payment_method.payment_method_details }
    assert_redirected_to customer_payment_method_path(assigns(:customer_payment_method))
  end

  test "should destroy customer_payment_method" do
    assert_difference('CustomerPaymentMethod.count', -1) do
      delete :destroy, id: @customer_payment_method
    end

    assert_redirected_to customer_payment_methods_path
  end
end
