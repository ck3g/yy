angular.module('Yy').controller 'TopicActionsCtrl', ($scope, $location, NewTopicForm, Session) ->
  $scope.newTopicForm = NewTopicForm

  $scope.currentUserId = Session.currentUser.id

  $scope.isActive = (path) ->
    path is $location.path()
