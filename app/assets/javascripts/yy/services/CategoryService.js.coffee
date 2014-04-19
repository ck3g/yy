angular.module('Yy').factory 'Category', ($resource) ->
  $resource("/yy/api/categories/:id", {id: '@id'})
