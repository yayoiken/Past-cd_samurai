class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :current_product

# 　　商品詳細ページのの商品IDを持ってくるための定義
  def current_product
  	 session[:product_id]
  		@product = Product.find(session[:product_id])
  

  end

end
