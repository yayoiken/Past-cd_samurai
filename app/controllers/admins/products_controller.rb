class Admins::ProductsController < Admins::ApplicationController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.save
		redirect_to admins_products_path(@product)
	end

	private

	def product_params
		params.require(:product).permit(:cd_title)
	end
end
