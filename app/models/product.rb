class Product < ActiveRecord::Base

	# ASSOCIATIONS
	has_many	:reviews
	has_many	:stars

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

	def total_rating_in_percentage
		total_stars 	= self.stars_count
		total_ratings = self.stars.sum(:rating)

		if total_stars > 0
			return ((total_ratings.to_f/(total_stars * 5).to_f) * 100).round(2)
		else
			0
		end
	end
end
