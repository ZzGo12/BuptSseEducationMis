<%--
  Created by IntelliJ IDEA.
  User: ZzGo
  Date: 2017/5/27
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="keywords" content="scclui框架">
    <meta name="description" content="scclui为轻量级的网站后台管理系统模版。">
    <title>BUPTSSE教务选课系统</title>

    <link rel="stylesheet" href="../common/css/sccl.css">
    <link rel="stylesheet" type="text/css" href="../common/skin/qingxin/skin.css" id="layout-skin"/>

</head>

<body>
<div class="layout-admin">
    <header class="layout-header">
        <span class="header-logo">北邮教务选课系统</span>
        <a class="header-menu-btn" href="javascript:;"><i class="icon-font">&#xe600;</i></a>
        <ul class="header-bar">
            <li class="header-bar-role"><a href="javascript:;" id="role">
                <c:if test="${sessionScope.teacher != null}">教师</c:if>
                <c:if test="${sessionScope.admin != null}">管理员</c:if>
                <c:if test="${sessionScope.student != null}">学生</c:if>
            </a></li>
            <li class="header-bar-nav">
                <a href="javascript:;">${sessionScope.teacher.name}${sessionScope.student.name}<i class="icon-font" style="margin-left:5px;">&#xe60c;</i></a>
                <ul class="header-dropdown-menu">
                    <li><a href="javascript:exitSys();">退出</a></li>
                </ul>
            </li>
            <li class="header-bar-nav">
                <a href="javascript:;" title="换肤"><i class="icon-font">&#xe608;</i></a>
                <ul class="header-dropdown-menu right dropdown-skin">
                    <li><a href="javascript:;" data-val="qingxin" title="清新">清新</a></li>
                    <li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
                    <li><a href="javascript:;" data-val="molv" title="墨绿">墨绿</a></li>

                </ul>
            </li>
        </ul>
    </header>
    <aside class="layout-side">
        <ul class="side-menu">

        </ul>
    </aside>

    <div class="layout-side-arrow"><div class="layout-side-arrow-icon"><i class="icon-font">&#xe60d;</i></div></div>

    <section class="layout-main">
        <div class="layout-main-tab">
            <button class="tab-btn btn-left"><i class="icon-font">&#xe60e;</i></button>
            <nav class="tab-nav">
                <div class="tab-nav-content">
                    <a href="javascript:;" class="content-tab active" data-id="home.html">首页</a>
                </div>
            </nav>
            <button class="tab-btn btn-right"><i class="icon-font">&#xe60f;</i></button>
        </div>
        <div class="layout-main-body">
            <iframe class="body-iframe" name="iframe0" width="100%" height="99%" src="${pageContext.request.contextPath}/teacher/module.jsp" frameborder="0" data-id="home.html" seamless></iframe>
        </div>
    </section>
    <div class="layout-footer">@BUPT——ZzGo</div>
</div>
<script type="text/javascript" src="../common/lib/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="../common/js/sccl4.js"></script>
<script type="text/javascript" src="../common/js/sccl-util.js"></script>
<script>
    function exitSys() {
        var addr = "${pageContext.request.contextPath}/logout/";
        if($("#role").text().trim() == "学生") {
            addr+="student";
        }else {
            addr+="teacher"
        }
        window.location.href=addr;
    }
</script>
</body>
</html>
