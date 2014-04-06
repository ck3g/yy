
Yy = angular.module("Yy", ['ngRoute', 'ngResource'])

Yy.config (['$routeProvider', ($routeProvider) ->
  $routeProvider
    .otherwise({ templateUrl: '../assets/yy/topics/index.html', controller: 'TopicsCtrl' })
])

Yy.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

  defaults = $httpProvider.defaults.headers
  defaults.patch = defaults.patch || {}
  defaults.patch['Content-Type'] = 'application/json'
