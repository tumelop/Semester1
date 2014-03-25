class CreateOrderStatuses < ActiveRecord::Migration
  def change
    create_table :order_statuses do |t|
      t.string :order_status_desc

      t.timestamps
    end
  end
end
