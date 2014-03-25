json.array!(@products) do |product|
  json.extract! product, :id, :prod_book_name, :prod_book_price, :prod_book_isbn, :prod_book_author, :prod_book_publicationDate
  json.url product_url(product, format: :json)
end
