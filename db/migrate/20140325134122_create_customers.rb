class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :cus_fullName
      t.string :cus_address
      t.string :cus_phone
      t.string :cus_email
      t.string :cus_country
      t.string :cus_city
      t.string :cus_loginName
      t.string :cus_loginPassword
      t.string :cus_confirmPassword

      t.timestamps
    end
  end
end
