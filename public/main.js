var app = angular.module('examplehttpandcontroller',[]);

app.factory('myService', function($http){
  return {
    async: function(){
      return $http.get('/package/RG205981668BR');
    }
  };
});

app.controller('MainCtrl', function(myService,$scope){
  myService.async().then(function(d){
    $scope.data = d;
  })
})
