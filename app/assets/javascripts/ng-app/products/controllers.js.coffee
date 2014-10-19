productController = angular.module('product.controllers', [])

productController.controller("ProductListController", ["$scope", "Product", ($scope, Product) ->
	$scope.products = Product.query()
])