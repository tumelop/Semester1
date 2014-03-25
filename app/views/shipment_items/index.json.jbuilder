json.array!(@shipment_items) do |shipment_item|
  json.extract! shipment_item, :id
  json.url shipment_item_url(shipment_item, format: :json)
end
