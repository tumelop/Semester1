require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { prod_book_author: @product.prod_book_author, prod_book_isbn: @product.prod_book_isbn, prod_book_name: @product.prod_book_name, prod_book_price: @product.prod_book_price, prod_book_publicationDate: @product.prod_book_publicationDate }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { prod_book_author: @product.prod_book_author, prod_book_isbn: @product.prod_book_isbn, prod_book_name: @product.prod_book_name, prod_book_price: @product.prod_book_price, prod_book_publicationDate: @product.prod_book_publicationDate }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
