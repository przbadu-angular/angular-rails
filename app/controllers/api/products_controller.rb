class Api::ProductsController < ApplicationController
	respond_to :json

	def index
		@products = Product.includes(:reviews, :stars)
	end
end
