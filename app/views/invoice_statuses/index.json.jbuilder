json.array!(@invoice_statuses) do |invoice_status|
  json.extract! invoice_status, :id, :invoice_status_desc
  json.url invoice_status_url(invoice_status, format: :json)
end
