json.array!(@payment_methods) do |payment_method|
  json.extract! payment_method, :id, :payment_method_desc
  json.url payment_method_url(payment_method, format: :json)
end
