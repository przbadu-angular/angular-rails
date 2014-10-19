productServices = angular.module('product.services', [])

productServices.factory 'Product', ['$resource', ($resource) ->
	return $resource('/api/products/:id', { id: '@id' }, {
		update: {
			method: 'PUT'
		}
	})
]