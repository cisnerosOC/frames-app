(function(){
	"use strict";
	
	angular.module("app").controller("prescriptionsCtrl", function($scope,$http){
		$scope.newScript= {}  ;
		$scope.sendData = function(){
			console.log($scope.newScript);
			$http.post('/api/v1/prescriptions', $scope.newScript,{
				headers: { 'Content-Type': 'application/json; charset=UTF-8'},
			}).success(successCallback);
		};
		$http.get("/api/v1/prescriptions").then(function(response){
			$scope.scripts = response.data;
			
		});
	});
})();
