
@TopicsCtrl = ($scope, $location, $http) ->
  $scope.topics = [{ title: "Loading...", content: '' }]

  loadTopics = ->
    $http.get("/yy/topics.json").success (data) ->
      $scope.topics = data

  loadTopics()
