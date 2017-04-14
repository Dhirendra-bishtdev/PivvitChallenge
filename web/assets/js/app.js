var myApp = angular.module('myApp',[]);
       
    

myApp.config(['$routeProvider', function($routeProvider) {

  $routeProvider.
      when('/', {templateUrl: 'assets/tpl/lists.html', controller: ListCtrl}).
      when('/add-user', {templateUrl: 'assets/tpl/add-new.html', controller: AddCtrl}).
      otherwise({redirectTo: '/'});
}]).run( function($rootScope, $location) {
   
 });
 
 


function ListCtrl($scope,$http,$location) {
  $scope.activePath = null;
  $http.get('http://localhost/PivvitChallenge/purchase').success(function(data) {
    $scope.purchase = data;
  });
  

  
  
}

function AddCtrl($scope, $http, $location) {
  $scope.master = {};
  $scope.activePath = null;
  

  $scope.add_new = function(purchase, AddNewForm) {

    $http.post('http://localhost/PivvitChallenge/purchase', purchase).success(function(){
      $scope.reset();
      $scope.activePath = $location.path('/list');
    });

    $scope.reset = function() {
      $scope.purchase = angular.copy($scope.master);
    };

    $scope.reset();

  };
}
