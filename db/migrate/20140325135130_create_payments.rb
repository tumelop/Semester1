class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :payment_date
      t.double :payment_amount

      t.timestamps
    end
  end
end
