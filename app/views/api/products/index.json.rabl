collection @products

attributes :id, :name, :market_price, :selling_price, :you_save, :percentage_off,
		:stock_qty, :short_description, :long_description, :is_available,
		:created_at, :updated_at

node do |product|
	{
		:created_at_formatter => product.created_at.strftime("%m/%d/%Y"),
		:last_updated_at 			=> time_ago_in_words(product.updated_at),
		:index_url 						=> api_products_url,
		:edit_url							=> edit_api_product_url(product),		
	}
end


child :reviews do
	attributes :id, :product_id, :title, :review, :name, :created_at, :updated_at

	node do |review|
		{
			:created_at_formatter => review.created_at.strftime("%m/%d/%Y"),
			:last_updated_at 			=> time_ago_in_words(review.updated_at)
		}
	end
end

child :stars do
	attributes :id, :product_id, :rating, :created_at, :updated_at

	node do |star|
		{
			:created_at_formatter => star.created_at.strftime("%m/%d/%Y"),
			:last_updated_at 			=> time_ago_in_words(star.updated_at)
		}
	end
end