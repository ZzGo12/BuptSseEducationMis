<%--
  Created by IntelliJ IDEA.
  User: Nothing
  Date: 2017/6/2
  Time: 21:16
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
            <small>查看课程信息</small>
        </h1>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading text-center h2">课程详细信息</div>
        <!-- Table -->
        <table class="table table-hover">
            <tr>
                <td class="text-center">课程名</td>
                <td class="text-center">${course.name}</td>
            </tr>
            <tr>
                <td class="text-center">学分</td>
                <td class="text-center">${course.credit}</td>
            </tr>
            <tr>
                <td class="text-center">学时</td>
                <td class="text-center">${course.period}</td>
            </tr>
            <tr>
                <td class="text-center">上课时间</td>
                <td class="text-center">
                    <c:if test="${course.day!=null and course.startTime!=null and course.endTime!=null}">
                    周${course.day}&nbsp;&nbsp;第${course.startTime}节——第${course.endTime}节
                    </c:if>
                </td>
            </tr>
            <tr>
                <td class="text-center">上课周数</td>
                <td class="text-center">
                    <c:if test="${course.startWeek!=null and course.endWeek!=null}">
                    ${course.startWeek}周至${course.endWeek}周
                    </c:if>
                </td>
            </tr>
            <tr>
                <td class="text-center">授课教师</td>
                <td class="text-center">${course.teacher.name}</td>
            </tr>
            <tr>
                <td class="text-center">授课教室</td>
                <td class="text-center">
                    <c:if test="${course.classroom.name !=null && course.classroom.address != null}">
                    ${course.classroom.name}室${course.classroom.address}号
                    </c:if>
                </td>
            </tr>
        </table>
    </div>
</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>