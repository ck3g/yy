angular.module('Yy').controller 'CategoriesCtrl', ($scope, Category) ->
  $scope.categories = Category.query()
