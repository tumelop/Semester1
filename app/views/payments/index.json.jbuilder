json.array!(@payments) do |payment|
  json.extract! payment, :id, :payment_date, :payment_amount
  json.url payment_url(payment, format: :json)
end
