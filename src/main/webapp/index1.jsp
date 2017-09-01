<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.17/angular.min.js"></script>
    <title>第一个AngularJS程序</title>
</head>
<body ng-app="myapp">
<div ng-controller="HelloController" >
    <h2>你好 ！第一个{{helloTo.title}}程序示例</h2>
</div>
<script>
    angular.module("myapp", [])
        .controller("HelloController", function($scope) {
            $scope.helloTo = {};
            $scope.helloTo.title = "AngularJS";
        });
</script>
</body>
</html>