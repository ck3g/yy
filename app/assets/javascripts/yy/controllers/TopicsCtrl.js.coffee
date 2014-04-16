
@Yy.controller 'TopicsCtrl', ($scope, $location, $http, Session, Topic) ->
  $scope.topics = Topic.query()

  $scope.currentUserId = Session.currentUser.id

  $scope.newTopicFormVisible = false

  $scope.showNewTopicForm = ->
    $scope.newTopicFormVisible = true

  $scope.hideNewTopicForm = ->
    $scope.newTopicFormVisible = false


