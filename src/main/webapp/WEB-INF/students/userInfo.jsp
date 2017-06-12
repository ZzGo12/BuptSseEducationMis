<%--
  Created by IntelliJ IDEA.
  User: Nothing
  Date: 2017/5/30
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="page-header text-center">
        <h1>教务管理系统
            <small>查看个人信息</small>
        </h1>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading text-center h2">个人信息</div>
        <!-- Table -->
        <table class="table table-hover">
            <tr>
                <td class="text-center">学号</td>
                <td class="text-center">${sessionScope.student.no}</td>
            </tr>
            <tr>
                <td class="text-center">姓名</td>
                <td class="text-center">${sessionScope.student.name}</td>
            </tr>
            <tr>
                <td class="text-center">性别</td>
                <td class="text-center">${sessionScope.student.sex}</td>
            </tr>
            <tr>
                <td class="text-center">年龄</td>
                <td class="text-center">${sessionScope.student.age}</td>
            </tr>
            <tr>
                <td class="text-center">所在院系</td>
                <td class="text-center">${sessionScope.student.dept}</td>
            </tr>
        </table>
    </div>
</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
