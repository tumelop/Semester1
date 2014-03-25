class CreateInvoiceStatuses < ActiveRecord::Migration
  def change
    create_table :invoice_statuses do |t|
      t.string :invoice_status_desc

      t.timestamps
    end
  end
end
