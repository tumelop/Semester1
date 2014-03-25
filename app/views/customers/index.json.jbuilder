json.array!(@customers) do |customer|
  json.extract! customer, :id, :cus_fullName, :cus_address, :cus_phone, :cus_email, :cus_country, :cus_city, :cus_loginName, :cus_loginPassword, :cus_confirmPassword
  json.url customer_url(customer, format: :json)
end
