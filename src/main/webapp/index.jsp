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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css"/>
    <script>
        var message = '${message}';
        if(message)
            alert(message);
    </script>
</head>
<body>
<form action="${pageContext.request.contextPath}/login/index" method="post">
    <div class="mycenter container-fluid">
        <div style="width:120%">
            <div class="col-lg-11 text-center text-info">
                <h2>请登录 我是
                    <select id="role" name="role">
                        <option value="student">学生</option>
                        <option value="teacher">老师</option>
                    </select>
                </h2>
            </div>
            <div class="col-lg-10">
                <input type="text" class="form-control" name="no" placeholder="请输入账户名" required autofocus/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10">
                <input type="password" class="form-control" name="pwd" placeholder="请输入密码" required autofocus/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10 mycheckbox checkbox">
                <%--TODO--%>
                <input type="checkbox" class="col-lg-1" name="autoLoginTimeout">记住密码</input>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-12">
                <button type="submit" class="btn btn-success col-lg-4">登录</button>
                <a href="javascript:register();">
                    <button type="button" class="btn btn-warning col-lg-4">注册</button>
                </a>
            </div>
        </div>
    </div>
</form>

<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script>
    function register() {
        var addr = "${pageContext.request.contextPath}/register/"+$("#role").val();
        window.location.href=addr;
    }
    $("#role").change(function () {
        var role = $("#role").val();
        if(role=="student") {
            $("input[name='no']").val('${cookie.studentUserName.value}');
            $("input[name='pwd']").val('${cookie.studentPassword.value}');
            if('${cookie.studentPassword.value}'!='') {
                $("input[name='autoLoginTimeout']").attr("checked","checked");
            }else {
                $("input[name='autoLoginTimeout']").removeAttr("checked");
            }
        }else {
            $("input[name='no']").val('${cookie.teacherUserName.value}');
            $("input[name='pwd']").val('${cookie.teacherPassword.value}');
            if('${cookie.teacherPassword.value}'!='') {
                $("input[name='autoLoginTimeout']").attr("checked","checked");
            }else {
                $("input[name='autoLoginTimeout']").removeAttr("checked");
            }
        }
    });
    $(document).ready(function(){
        var role = $("#role").val();
        if(role=="student") {
            $("input[name='no']").val('${cookie.studentUserName.value}');
            $("input[name='pwd']").val('${cookie.studentPassword.value}');
            if('${cookie.studentPassword.value}'!='') {
                $("input[name='autoLoginTimeout']").attr("checked","checked");
            }else {
                $("input[name='autoLoginTimeout']").removeAttr("checked");
            }
        }else {
            $("input[name='no']").val('${cookie.teacherUserName.value}');
            $("input[name='pwd']").val('${cookie.teacherPassword.value}');
            if('${cookie.teacherPassword.value}'!='') {
                $("input[name='autoLoginTimeout']").attr("checked","checked");
            }else {
                $("input[name='autoLoginTimeout']").removeAttr("checked");
            }
        }

    });
</script>
</body>
</html>
