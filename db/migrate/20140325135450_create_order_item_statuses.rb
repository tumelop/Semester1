class CreateOrderItemStatuses < ActiveRecord::Migration
  def change
    create_table :order_item_statuses do |t|
      t.string :order_item_status

      t.timestamps
    end
  end
end
