class CreateProductTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :product_types do |t|
      t.varchar :product_type
      t.integer :product_id

      t.timestamps
    end
  end
end
