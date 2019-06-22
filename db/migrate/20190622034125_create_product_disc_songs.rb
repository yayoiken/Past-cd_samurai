class CreateProductDiscSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :product_disc_songs do |t|
      t.integer :disc_id
      t.string :song_name
      t.integer :position

      t.timestamps
    end
  end
end
