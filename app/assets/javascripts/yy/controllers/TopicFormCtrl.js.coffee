
angular.module('Yy').controller 'TopicFormCtrl', ($scope, $location, Topic, NewTopicForm, Category) ->
  $scope.newTopicForm = NewTopicForm

  $scope.topics = Topic.query()

  $scope.categories =  Category.query () ->
    $scope.categories = [{ id: "", name: "Uncategorized" }].concat $scope.categories

  $scope.submitForm = ->

    if $scope.topicForm.$valid
      form = $scope.topicForm
      topic = new Topic(
        title: form.title.$modelValue
        content: form.content.$modelValue
        category_id: form.category_id.$modelValue
      ).$save()
      topic.then (response) ->
        $scope.newTopicForm.show = false
        $scope.topicForm.$setPristine()
        $scope.topic =
          title: ''
          content: ''
          category_id: ''
        $scope.topics.push response
        $location.path("/topics/#{response.slug}")
