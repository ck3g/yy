
angular.module('Yy').controller 'TopicsCtrl', ($scope, $location, $http, Session, Topic, NewTopicForm, CategoryFilter) ->
  $scope.topics = Topic.query()

  $scope.currentUserId = Session.currentUser.id

  $scope.categoryFilter = CategoryFilter


