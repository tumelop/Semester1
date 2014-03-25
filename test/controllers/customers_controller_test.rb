require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { cus_address: @customer.cus_address, cus_city: @customer.cus_city, cus_confirmPassword: @customer.cus_confirmPassword, cus_country: @customer.cus_country, cus_email: @customer.cus_email, cus_fullName: @customer.cus_fullName, cus_loginName: @customer.cus_loginName, cus_loginPassword: @customer.cus_loginPassword, cus_phone: @customer.cus_phone }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { cus_address: @customer.cus_address, cus_city: @customer.cus_city, cus_confirmPassword: @customer.cus_confirmPassword, cus_country: @customer.cus_country, cus_email: @customer.cus_email, cus_fullName: @customer.cus_fullName, cus_loginName: @customer.cus_loginName, cus_loginPassword: @customer.cus_loginPassword, cus_phone: @customer.cus_phone }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
