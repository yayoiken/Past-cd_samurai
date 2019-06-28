class CartsController < ApplicationController
  def index
  	@carts = Cart.where(client_id: current_client.id)
  end

  def create

	  @product = Product.find(params[:product_id])
    @cart = current_client.carts.new(product_id: @product.id)
    @cart.save
    redirect_to carts_path

  end

  def update
    Cart.update_all(carts_params)
    redirect_to carts_path
  end

  def destroy
   @cart = Cart.find(params[:id])
   @cart.delete
   redirect_to carts_path
  end

  private
  def cart_params
  params.require(:cart).permit(:client_id,
                      :product_id,
                    :quantity)
  end
  def carts_params
    params.permit(carts: [:client_id, :product_id, :quantity])[:carts]
  end

end
