class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :prod_book_name
      t.double :prod_book_price
      t.string :prod_book_isbn
      t.string :prod_book_author
      t.date :prod_book_publicationDate

      t.timestamps
    end
  end
end
