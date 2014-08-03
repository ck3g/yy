
angular.module('Yy').controller 'TopicCtrl', ($scope, $routeParams, Topic, Comment) ->
  $scope.topic = Topic.get(id: $routeParams.id)

  $scope.comments = Comment.query({topic_id: $routeParams.id})
