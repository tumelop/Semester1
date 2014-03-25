json.array!(@order_statuses) do |order_status|
  json.extract! order_status, :id, :order_status_desc
  json.url order_status_url(order_status, format: :json)
end
