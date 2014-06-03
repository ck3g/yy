angular.module('Yy').factory 'CategoryFilter', () ->
  @current =
    name: 'All categories'

  current: @current
  reset: () ->
    @current =
      name: 'All categories'
      value: null
  set: (name) ->
    @current =
      name: name
      value: name
