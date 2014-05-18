
@Yy = angular.module("Yy", ['ngRoute', 'ngResource', 'angularMoment'])

# TODO: handle 404 errors
@Yy.config (['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/topics/:id', { templateUrl: '../assets/yy/topics/show.html', controller: 'TopicCtrl'})
    .when('/categories', { templateUrl: '../assets/yy/categories/index.html', controller: 'CategoriesCtrl'})
    .otherwise({ templateUrl: '../assets/yy/topics/index.html', controller: 'TopicsCtrl' })
])

@Yy.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

  defaults = $httpProvider.defaults.headers
  defaults.patch = defaults.patch || {}
  defaults.patch['Content-Type'] = 'application/json'
