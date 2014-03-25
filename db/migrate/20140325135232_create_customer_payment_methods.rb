class CreateCustomerPaymentMethods < ActiveRecord::Migration
  def change
    create_table :customer_payment_methods do |t|
      t.int :credit_cardNumber
      t.string :payment_method_details

      t.timestamps
    end
  end
end
