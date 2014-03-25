class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :order_item_status
      t.int :order_item_quantity
      t.double :order_item_price

      t.timestamps
    end
  end
end
