
@TopicsCtrl = ($scope, $location, $http, Session, Topic) ->
  $scope.topics = Topic.query()

  $scope.currentUserId = Session.currentUser.id

