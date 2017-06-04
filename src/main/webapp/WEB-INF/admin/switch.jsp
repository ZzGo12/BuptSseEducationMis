<%--
  Created by IntelliJ IDEA.
  User: ZzGo
  Date: 2017/5/22
  Time: 20:36
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
<div class="jumbotron">
    <div class="container">
        <h1 class="text-center">当前选课开放情况：
        <c:if test='${sessionScope.admin.controlMIS+"" == 48}'>
            未开放
        </c:if>
        <c:if test='${sessionScope.admin.controlMIS+"" == 49}'>
            开放中
        </c:if>
        </h1>
        <p style="margin-top:10%">
            <span style="color:#ff282f">当前学期为:${sessionScope.admin.nowTerm}</span>
        </p>
        <p style="margin-top:10%">
            <span style="color:#ff282f">更改学期为:</span>
            <select name="nowTerm" id="term">
                <option >2017年春</option>
                <option >2017年秋</option>
            </select>
        </p>
        <p style="margin-top:10%">亲爱的管理员,您可以通过以下按钮修改选课的开放情况!</p>
        <p style="margin-top:10%;margin-left:35%">
            <a class="btn btn-primary btn-lg" href='javascript:editSwitchAndTerm("${pageContext.request.contextPath}/edit/switchStatus/1")' role="button">开放选课</a>
            <a style="margin-left:5%" class="btn btn-warning btn-lg" href='javascript:editSwitchAndTerm("${pageContext.request.contextPath}/edit/switchStatus/0")' role="button">关闭选课</a>
        </p>
    </div>
</div>
<script>
    function editSwitchAndTerm(addr) {
        var term1 = $("#term").val();
        window.location.href=addr+"/"+term1;
    }
</script>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
