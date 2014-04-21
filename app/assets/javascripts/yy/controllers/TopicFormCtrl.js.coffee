
angular.module('Yy').controller 'TopicFormCtrl', ($scope, $location, Topic, NewTopicForm) ->
  $scope.newTopicForm = NewTopicForm

  $scope.submitForm = ->

    if $scope.topicForm.$valid
      topic = new Topic(
        title: $scope.topicForm.title.$modelValue
        content: $scope.topicForm.content.$modelValue
      ).$save()
      topic.then (response) ->
        $scope.topics.push response
        $location.path('/')

