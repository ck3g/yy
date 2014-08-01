
angular.module('Yy').controller 'ReplyFormCtrl', ($scope, $location, $routeParams, NewReplyForm, Comment, Topic) ->
  $scope.newReplyFrom = NewReplyForm

  # $scope.comments = Comment.query({topic_id: $routeParams.id})

  $scope.submitForm = ->
    console.log "Submitting Reply From"
    if $scope.replyForm.$valid
      form = $scope.replyForm
      comment = Comment.save(
        { topic_id: $routeParams.id },
        { content: form.content.$modelValue },
        () ->
          console.log "success"
          $scope.newReplyForm.show = false
          $scope.replyForm.$setPristine()
          $scope.comment =
            content: ''
          # $scope.comments.push response
        ,
        () ->
          console.log "error"
      )
