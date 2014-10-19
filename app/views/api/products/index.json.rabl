collection @products

attributes :id, :name, :market_price, :selling_price, :you_save, :percentage_off,
		:stock_qty, :short_description, :long_description, :is_available,
		:created_at, :updated_at

node do |product|
	{
		:created_at_formatter => product.created_at.strftime("%m/%d/%Y"),
		:last_updated_at 			=> time_ago_in_words(product.updated_at)
	}
end


child :review do
	attributes :id, :product_id :title, :review, :name, :created_at, :updated_at
end

child :star do
	attributes :id, :product_id, :rating, :created_at, :updated_at
end