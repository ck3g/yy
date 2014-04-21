angular.module('Yy').controller 'TopicActionsCtrl', ($scope, NewTopicForm, Session) ->
  $scope.newTopicForm = NewTopicForm

  $scope.currentUserId = Session.currentUser.id
