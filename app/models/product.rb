class Product < ApplicationRecord
	has_many :carts

	def cart(user)
		carts.create(user_id: user.id)
	end
end
