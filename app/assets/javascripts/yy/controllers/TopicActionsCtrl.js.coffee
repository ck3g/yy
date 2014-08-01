angular.module('Yy').controller 'TopicActionsCtrl', ($scope, $location, NewTopicForm, Session, Category, CategoryFilter) ->
  $scope.newTopicForm = NewTopicForm

  $scope.currentUserId = Session.currentUser.id

  $scope.isActive = (path) ->
    path is $location.path()

  $scope.categories = Category.query()

  $scope.categoryFilter = CategoryFilter
