class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :client_id
      t.string :tel_number
      t.string :postal_code
      t.string :address
      t.string :to_name
      t.string :to_name_kana

      t.timestamps
    end
  end
end
