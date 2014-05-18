
angular.module('Yy').controller 'TopicCtrl', ($scope, $routeParams, Topic) ->
  $scope.topic = Topic.get(id: $routeParams.id)
