class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.date :shipment_date

      t.timestamps
    end
  end
end
