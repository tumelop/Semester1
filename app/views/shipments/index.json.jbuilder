json.array!(@shipments) do |shipment|
  json.extract! shipment, :id, :shipment_date
  json.url shipment_url(shipment, format: :json)
end
