class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :payment_method
      t.integer :ship_status

      t.timestamps
    end
  end
end
