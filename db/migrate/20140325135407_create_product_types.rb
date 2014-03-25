class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :product_type_desc

      t.timestamps
    end
  end
end
