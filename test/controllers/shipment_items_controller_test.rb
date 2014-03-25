require 'test_helper'

class ShipmentItemsControllerTest < ActionController::TestCase
  setup do
    @shipment_item = shipment_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipment_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipment_item" do
    assert_difference('ShipmentItem.count') do
      post :create, shipment_item: {  }
    end

    assert_redirected_to shipment_item_path(assigns(:shipment_item))
  end

  test "should show shipment_item" do
    get :show, id: @shipment_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipment_item
    assert_response :success
  end

  test "should update shipment_item" do
    patch :update, id: @shipment_item, shipment_item: {  }
    assert_redirected_to shipment_item_path(assigns(:shipment_item))
  end

  test "should destroy shipment_item" do
    assert_difference('ShipmentItem.count', -1) do
      delete :destroy, id: @shipment_item
    end

    assert_redirected_to shipment_items_path
  end
end
