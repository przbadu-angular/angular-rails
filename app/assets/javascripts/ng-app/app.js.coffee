app = angular.module("angularRails", ['ngRoute', 'ngResource', 'layouts.directives', 'layouts.controllers', 
	'product.directives', 'product.controllers', 'product.services'])


app.config(['$routeProvider', ($routeProvider) ->
	$routeProvider
		.when('/',
			templateUrl: "home/index.html",
			controller: 'ProductListController'
		)
])