class Admins::ProductsController < Admins::ApplicationController

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.save
		redirect_to admins_product_path(@product)
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update(product_params)
		redirect_to admins_product_path(@product)
	end

	def destroy
		product = Product.find(params[:id])
		product.destroy
		redirect_to admins_products_path
	end

	private

	def product_params
		params.require(:product).permit(:cd_title)
	end
end
