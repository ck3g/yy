
@TopicFormCtrl = ($scope) ->
  $scope.submitForm = (isValid) ->
    if isValid
      console.log "Form is valid"
