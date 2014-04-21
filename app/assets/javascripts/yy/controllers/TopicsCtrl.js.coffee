
angular.module('Yy').controller 'TopicsCtrl', ($scope, $location, $http, Session, Topic, NewTopicForm) ->
  $scope.topics = Topic.query()

  $scope.currentUserId = Session.currentUser.id


