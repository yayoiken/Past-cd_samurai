class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :client_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
