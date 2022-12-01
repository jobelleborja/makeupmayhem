class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.varchar :name
      t.varchar :product_type
      t.integer :price

      t.timestamps
    end
  end
end
