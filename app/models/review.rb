class Review < ActiveRecord::Base

	# ASSOCIATION
	belongs_to :product, :counter_cache => true

end
