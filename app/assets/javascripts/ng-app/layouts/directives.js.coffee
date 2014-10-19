app = angular.module("layouts.directives", ['templates'])

app.directive "layoutNavbarHeader", ->
	restrict: 'E'
	replace: true
	templateUrl: 'layouts/navbar-header.html'

app.directive 'layoutSidebar', ->
	restrict: 'E'
	replace: true
	templateUrl: 'layouts/sidebar.html'

app.directive 'layoutBreadcrumb', ->
	restrict: 'E'
	replace: true
	templateUrl: 'layouts/breadcrumb.html'