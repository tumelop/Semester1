json.array!(@orders) do |order|
  json.extract! order, :id, :date_order_placed, :order_details
  json.url order_url(order, format: :json)
end
