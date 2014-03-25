class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.string :payment_method_desc

      t.timestamps
    end
  end
end
