json.array!(@customer_payment_methods) do |customer_payment_method|
  json.extract! customer_payment_method, :id, :credit_cardNumber, :payment_method_details
  json.url customer_payment_method_url(customer_payment_method, format: :json)
end
