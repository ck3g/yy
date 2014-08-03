
angular.module('Yy').controller 'ReplyFormCtrl', ($scope, $location, $routeParams, NewReplyForm, Comment, Topic) ->
  $scope.newReplyFrom = NewReplyForm

  $scope.submitForm = ->
    if $scope.replyForm.$valid
      form = $scope.replyForm
      comment = Comment.save(
        { topic_id: $routeParams.id },
        { content: form.content.$modelValue },
        (response) ->
          $scope.newReplyForm.show = false
          $scope.replyForm.$setPristine()
          $scope.comment =
            content: ''
          $scope.comments.push response
          $scope.comments
        ,
        () ->
          console.log "error"
      )
