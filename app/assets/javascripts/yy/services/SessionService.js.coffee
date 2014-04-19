angular.module('Yy').factory 'Session', ($window) ->
  factory =
    currentUser:
      $window.gon.current_user

  factory
