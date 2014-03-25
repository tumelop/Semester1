class CreateShipmentItems < ActiveRecord::Migration
  def change
    create_table :shipment_items do |t|

      t.timestamps
    end
  end
end
