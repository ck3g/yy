angular.module('Yy').factory 'Comment', ($resource) ->
  $resource("/yy/api/topics/:topic_id/comments/:id", {topic_id: '@topic_id', id: '@id'}, {update: {method: 'PATCH'}})
