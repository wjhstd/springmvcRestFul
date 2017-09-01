<%--
  Created by IntelliJ IDEA.
  User: lanouhn
  Date: 17/9/1
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>AngularJS $http Example</title>
    <style>
        .username.ng-valid {
            background-color: lightgreen;
        }
        .username.ng-dirty.ng-invalid-required {
            background-color: red;
        }
        .username.ng-dirty.ng-invalid-minlength {
            background-color: yellow;
        }

        .email.ng-valid {
            background-color: lightgreen;
        }
        .email.ng-dirty.ng-invalid-required {
            background-color: red;
        }
        .email.ng-dirty.ng-invalid-email {
            background-color: yellow;
        }

    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href="<c:url value='/css/app.css' />" rel="stylesheet"></link>
</head>
<body ng-app="myApp" class="ng-cloak">
<div class="generic-container" ng-controller="UserController as ctrl">
    <div class="panel panel-default">
        <div class="panel-heading"><span class="lead">用户管理界面</span></div>
        <div class="formcontainer">
            <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                <input type="hidden" ng-model="ctrl.user.id" />
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-lable" for="uname">姓名</label>
                        <div class="col-md-7">
                            <input type="text" ng-model="ctrl.user.username" id="uname" class="username form-control input-sm" placeholder="输入姓名" required ng-minlength="3"/>
                            <div class="has-error" ng-show="myForm.$dirty">
                                <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span>
                                <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-lable" for="mobile">电话号码</label>
                        <div class="col-md-7">
                            <input type="text" ng-model="ctrl.user.mobile" id="mobile" class="form-control input-sm" placeholder="输入电话号码. [This field is validation free]"/>
                        </div>
                    </div>
                </div>

                <%--<div class="row">--%>
                    <%--<div class="form-group col-md-12">--%>
                        <%--<label class="col-md-2 control-lable" for="email">Email</label>--%>
                        <%--<div class="col-md-7">--%>
                            <%--<input type="email" ng-model="ctrl.user.email" id="email" class="email form-control input-sm" placeholder="Enter your Email" required/>--%>
                            <%--<div class="has-error" ng-show="myForm.$dirty">--%>
                                <%--<span ng-show="myForm.email.$error.required">This is a required field</span>--%>
                                <%--<span ng-show="myForm.email.$invalid">This field is invalid </span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>

                <div class="row">
                    <div class="form-actions floatRight">
                        <input type="submit"  value="{{!ctrl.user.id ? '添加' : '更新'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                        <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of Users </span></div>
        <div class="tablecontainer">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>ID.</th>
                    <th>姓名</th>
                    <th>电话号码</th>
                    <th width="20%"></th>
                </tr>
                </thead>
                <tbody>
                <tr ng-repeat="u in ctrl.users">
                    <td><span ng-bind="u.id"></span></td>
                    <td><span ng-bind="u.username"></span></td>
                    <td><span ng-bind="u.mobile"></span></td>
                    <%--<td><span ng-bind="u.email"></span></td>--%>
                    <td>
                        <button type="button" ng-click="ctrl.edit(u.id)" class="btn btn-success custom-width">Edit</button>  <button type="button" ng-click="ctrl.remove(u.id)" class="btn btn-danger custom-width">Remove</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%--<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>--%>
<script src="<c:url value='/angularjs/anjular.min.js'/>"></script>
<script src="<c:url value='/js/app.js' />"></script>
<script src="<c:url value='/js/user_service.js' />"></script>
<script src="<c:url value='/js/user_controller.js' />"></script>
</body>
</html>