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
        <div class="panel-heading text-center h1">所有教师</div>
        <table class="table table-striped table-hover table-bordered">
            <tr>
                <th>教师姓名</th>
                <th>教师工号</th>
                <th>教师系别</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${teachers}" var="teacher">
                <tr>
                    <td>${teacher.name}</td>
                    <td>${teacher.no}</td>
                    <td>${teacher.dept}</td>
                    <td>
                        <a class="btn btn-danger" href="javascript:deleteTeacher('${pageContext.request.contextPath}/delete/teacher/${teacher.no}')">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<script>
    function deleteTeacher(addr) {
        var rs = confirm("确定要删除吗?");
        if(rs===true) {
            window.location.href=addr;
        }
    }
</script>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>