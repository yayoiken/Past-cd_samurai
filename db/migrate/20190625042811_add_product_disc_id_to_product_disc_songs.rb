class AddProductDiscIdToProductDiscSongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_disc_songs, :product_disc, foreign_key: true
  end
end
