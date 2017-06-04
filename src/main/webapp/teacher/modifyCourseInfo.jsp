<%--
  Created by IntelliJ IDEA.
  User: Nothing
  Date: 2017/6/3
  Time: 7:41
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
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
<div class="container">
    <div class="page-header text-center">
        <h1>教务管理系统
            <small>编辑课程信息</small>
        </h1>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading text-center h2">课程信息</div>
        <!-- Table -->
        <form action="${pageContext.request.contextPath}/edit/teacher/courseUpdate" method="post">
            <input type="hidden" value="${course.id}" name="id">
            <table class="table table-hover">
                <tr>
                    <td class="text-center">课程名</td>
                    <td class="text-center"><input type="text" name="name" placeholder="${course.name}"
                                                   value="${course.name}" /></td>
                </tr>
                <tr>
                    <td class="text-center">学分</td>
                    <td class="text-center"><input type="text" name="credit" value="${course.credit}"/></td>
                </tr>
                <tr>
                    <td class="text-center">学期</td>
                    <td class="text-center">
                        <select class="" name="term">
                            <option <c:if test="${course.term == '2017年春'}">selected="selected"</c:if>>2017年春</option>
                            <option <c:if test="${course.term == '2017年秋'}">selected="selected"</c:if>>2017年秋</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="col-lg-5">
                        <button type="submit" class="btn btn-default btn-primary col-lg-offset-12">提交</button>
                    </td>
                    <td>
                        <button type="reset" class="btn btn-default btn-danger col-lg-offset-2">重置</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</html>