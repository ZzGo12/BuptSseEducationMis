<%--
  Created by IntelliJ IDEA.
  User: Nothing
  Date: 2017/6/1
  Time: 22:34
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
    <div class="panel panel-default">
        <div class="panel-heading text-center h1">
            已选课程
        </div>
        <table class="table table-striped table-hover table-bordered">
            <tr>
                <th>课程名</th>
                <th>学分</th>
                <th>所属学期</th>
                <th>选课时间</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${courses}" var="course">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/info/courseDetail/${course.id}">${course.name}</a></td>
                    <td>${course.credit}</td>
                    <td>${course.term}</td>
                    <td>${course.term}</td>
                    <td>
                        <a class="btn btn-danger" href="javascript:deleteCourse('${pageContext.request.contextPath}/delete/studentCourse/${course.id}')">退选</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<script>
    function deleteCourse(addr) {
        var rs = confirm("确定要退选吗?");
        if(rs===true) {
            window.location.href=addr;
        }
    }
</script>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>