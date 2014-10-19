app = angular.module("angularRails", ['ngRoute', 'layouts.directives', 'layouts.controllers'])


app.config(['$routeProvider', ($routeProvider) ->
	$routeProvider
		.when('/',
			templateUrl: "home/index.html",
			controller: 'HomeController'
		)
])