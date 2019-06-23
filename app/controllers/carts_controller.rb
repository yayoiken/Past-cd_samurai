class CartsController < ApplicationController
  def index
  	@client = current_client
  	@carts = Cart.where(client_id: @client.id)
  end

  def create

	@product = Product.find(params[:product_id])
    @cart = current_client.carts.new(product_id: @product.id)
    @cart.save
    redirect_to carts_path

  end

  def update
  end

  def destroy
  end

end
