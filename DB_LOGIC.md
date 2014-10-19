Product:
	name, market_price, selling_price, short_description, long_description, stock_qty, is_available

	DESC:
		name, short description will display in index page
		market-price and selling-price required to display discount
		stock_qty and is_available to find whether product is in stock or not?


	Association:
		has_many :reviews
		has_many :stars





Review:
	product_id:integer, title, review, name

	Counter Cache:
		


Rating:
	product_id:integer, star:integer

	Counter Cache:

