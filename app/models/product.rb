class Product < ActiveRecord::Base

	# function used for displaying how much amount user can save on this product
	def you_save
		(self.market_price > self.selling_price) ? (self.market_price - self.selling_price) : 0
	end

	# function for displaying percentage off that user can get on this product
	def percentage_off
		(you_save > 0) ? (you_save/100).round(2) : 0
	end

	# whether product exists in store or not
	def is_available
		self.stock_qty > 0
	end
end
