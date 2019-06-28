class Product < ApplicationRecord
	attachment :product_image
	has_many :product_discs
	accepts_nested_attributes_for :product_discs, allow_destroy: true
	has_many :carts
end
