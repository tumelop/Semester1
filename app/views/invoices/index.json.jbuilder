json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :invoice_details
  json.url invoice_url(invoice, format: :json)
end
