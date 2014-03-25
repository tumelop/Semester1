class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :invoice_details

      t.timestamps
    end
  end
end
