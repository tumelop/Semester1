json.array!(@order_items) do |order_item|
  json.extract! order_item, :id, :order_item_status, :order_item_quantity, :order_item_price
  json.url order_item_url(order_item, format: :json)
end
