class Api::ProductsController < ApplicationController
	respond_to :json

	def index
		@products = Product.all
	end
end
