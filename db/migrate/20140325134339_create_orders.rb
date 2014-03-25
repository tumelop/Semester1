class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :date_order_placed
      t.string :order_details

      t.timestamps
    end
  end
end
