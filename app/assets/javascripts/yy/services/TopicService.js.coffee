angular.module('Yy').factory 'Topic', ($resource) ->
  $resource("/yy/api/topics/:id", {id: '@id'}, {update: {method: 'PATCH'}})
