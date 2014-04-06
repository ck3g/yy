
@TopicsCtrl = ($scope, $location, $http, Session) ->
  $scope.topics = [{ title: "Loading...", content: '' }]

  $scope.currentUserId = Session.currentUser.id

  loadTopics = ->
    $http.get("/yy/api/topics.json").success (data) ->
      $scope.topics = data

  loadTopics()
